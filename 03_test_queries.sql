-- Airbnb Database System for Apartment and Room Booking
-- Business-oriented relationship and integrity tests for MySQL 8.0+

USE airbnb_booking_db;

-- =====================================================
-- QUERY 1: Guest booking details
-- Business question: Which guest booked which property and location?
-- This seven-table join verifies the complete guest-to-location path.
-- =====================================================
SELECT
    b.booking_id AS `Booking ID`,
    CONCAT(u.first_name, ' ', u.last_name) AS `Guest Name`,
    p.property_title AS `Property`,
    c.city_name AS `City`,
    co.country_name AS `Country`,
    b.check_in_date AS `Check-in`,
    b.check_out_date AS `Check-out`,
    b.number_of_guests AS `Guests`,
    b.booking_status AS `Booking Status`,
    b.total_amount AS `Total Amount`
FROM bookings AS b
INNER JOIN guest_profiles AS gp ON gp.guest_profile_id = b.guest_id
INNER JOIN users AS u ON u.user_id = gp.user_id
INNER JOIN properties AS p ON p.property_id = b.property_id
INNER JOIN addresses AS a ON a.address_id = p.address_id
INNER JOIN cities AS c ON c.city_id = a.city_id
INNER JOIN countries AS co ON co.country_id = c.country_id
ORDER BY b.check_in_date, b.booking_id;

-- =====================================================
-- QUERY 2: Property and host listing report
-- Business question: Who hosts each listing and what can it accommodate?
-- The query verifies the property-to-host and property-to-city relationships.
-- =====================================================
SELECT
    p.property_title AS `Property`,
    CONCAT(u.first_name, ' ', u.last_name) AS `Host Name`,
    c.city_name AS `City`,
    p.property_type AS `Property Type`,
    p.room_type AS `Room Type`,
    p.max_guests AS `Maximum Guests`,
    p.base_price_per_night AS `Price Per Night`,
    p.listing_status AS `Listing Status`
FROM properties AS p
INNER JOIN host_profiles AS hp ON hp.host_profile_id = p.host_id
INNER JOIN users AS u ON u.user_id = hp.user_id
INNER JOIN addresses AS a ON a.address_id = p.address_id
INNER JOIN cities AS c ON c.city_id = a.city_id
ORDER BY c.city_name, p.property_title;

-- =====================================================
-- QUERY 3: Property amenity report
-- Business question: Which amenities are offered by each property?
-- GROUP_CONCAT condenses the many-to-many bridge rows into one listing row.
-- =====================================================
SELECT
    p.property_id AS `Property ID`,
    p.property_title AS `Property`,
    GROUP_CONCAT(am.amenity_name ORDER BY am.amenity_name SEPARATOR ', ') AS `Amenities`,
    COUNT(am.amenity_id) AS `Amenity Count`
FROM properties AS p
INNER JOIN property_amenities AS pa ON pa.property_id = p.property_id
INNER JOIN amenities AS am ON am.amenity_id = pa.amenity_id
GROUP BY p.property_id, p.property_title
ORDER BY p.property_title;

-- =====================================================
-- QUERY 4: Property house rules
-- Business question: What rules apply to each property?
-- This verifies the second many-to-many property bridge.
-- =====================================================
SELECT
    p.property_id AS `Property ID`,
    p.property_title AS `Property`,
    GROUP_CONCAT(hr.rule_name ORDER BY hr.rule_name SEPARATOR ', ') AS `House Rules`
FROM properties AS p
INNER JOIN property_house_rules AS phr ON phr.property_id = p.property_id
INNER JOIN house_rules AS hr ON hr.rule_id = phr.rule_id
GROUP BY p.property_id, p.property_title
ORDER BY p.property_title;

-- =====================================================
-- QUERY 5: Complete booking payment report
-- Business question: What payment record and method belong to each booking?
-- LEFT JOIN preserves bookings even if their optional payment is absent.
-- =====================================================
SELECT
    b.booking_id AS `Booking ID`,
    CONCAT(u.first_name, ' ', u.last_name) AS `Guest Name`,
    pr.property_title AS `Property`,
    b.total_amount AS `Booking Total`,
    py.payment_amount AS `Payment Amount`,
    COALESCE(py.payment_status, 'Not Submitted') AS `Payment Status`,
    pm.method_type AS `Method Type`,
    pm.provider_name AS `Provider`,
    py.transaction_reference AS `Transaction Reference`
FROM bookings AS b
INNER JOIN guest_profiles AS gp ON gp.guest_profile_id = b.guest_id
INNER JOIN users AS u ON u.user_id = gp.user_id
INNER JOIN properties AS pr ON pr.property_id = b.property_id
LEFT JOIN payments AS py ON py.booking_id = b.booking_id
LEFT JOIN payment_methods AS pm ON pm.payment_method_id = py.payment_method_id
ORDER BY b.booking_id;

-- =====================================================
-- QUERY 6: Host payout and revenue report
-- Business question: How much gross booking value, payout, and commission
-- has each host generated for bookings that have a payout record?
-- =====================================================
SELECT
    hp.host_profile_id AS `Host ID`,
    CONCAT(u.first_name, ' ', u.last_name) AS `Host Name`,
    COUNT(DISTINCT b.booking_id) AS `Bookings with Payouts`,
    SUM(b.total_amount) AS `Gross Booking Amount`,
    SUM(hpo.payout_amount) AS `Host Payout Amount`,
    SUM(hpo.platform_commission) AS `Platform Commission`,
    SUM(CASE WHEN hpo.payout_status = 'Released' THEN hpo.payout_amount ELSE 0 END)
        AS `Released Payout Amount`
FROM host_profiles AS hp
INNER JOIN users AS u ON u.user_id = hp.user_id
INNER JOIN properties AS p ON p.host_id = hp.host_profile_id
INNER JOIN bookings AS b ON b.property_id = p.property_id
INNER JOIN host_payouts AS hpo
    ON hpo.booking_id = b.booking_id AND hpo.host_id = hp.host_profile_id
GROUP BY hp.host_profile_id, u.first_name, u.last_name
ORDER BY `Gross Booking Amount` DESC;

-- =====================================================
-- QUERY 7: Cancellation and refund report
-- Business question: Which reservations were cancelled and what was refunded?
-- =====================================================
SELECT
    b.booking_id AS `Booking ID`,
    p.property_title AS `Property`,
    CONCAT(u.first_name, ' ', u.last_name) AS `Cancelled By`,
    cn.cancellation_reason AS `Reason`,
    b.total_amount AS `Booking Total`,
    cn.refund_amount AS `Refund Amount`,
    cn.cancelled_at AS `Cancellation Date`,
    CASE
        WHEN cn.refund_amount = b.total_amount THEN 'Full refund'
        WHEN cn.refund_amount = 0 THEN 'No refund'
        ELSE 'Partial refund'
    END AS `Refund Outcome`
FROM cancellations AS cn
INNER JOIN bookings AS b ON b.booking_id = cn.booking_id
INNER JOIN users AS u ON u.user_id = cn.cancelled_by_user_id
INNER JOIN properties AS p ON p.property_id = b.property_id
ORDER BY cn.cancelled_at DESC;

-- =====================================================
-- QUERY 8: Review report
-- Business question: Who reviewed whom, for which property, and how highly?
-- The users table is joined twice under distinct reviewer/reviewed aliases.
-- =====================================================
SELECT
    p.property_title AS `Property`,
    CONCAT(reviewer.first_name, ' ', reviewer.last_name) AS `Reviewer`,
    CONCAT(reviewed.first_name, ' ', reviewed.last_name) AS `Reviewed User`,
    r.rating AS `Rating`,
    r.review_type AS `Review Type`,
    r.review_comment AS `Comment`,
    r.created_at AS `Review Date`
FROM reviews AS r
INNER JOIN bookings AS b ON b.booking_id = r.booking_id
INNER JOIN users AS reviewer ON reviewer.user_id = r.reviewer_user_id
INNER JOIN users AS reviewed ON reviewed.user_id = r.reviewed_user_id
INNER JOIN properties AS p
    ON p.property_id = r.property_id AND p.property_id = b.property_id
ORDER BY r.created_at, r.review_id;

-- =====================================================
-- QUERY 9: Guest wishlist report
-- Business question: What properties has each guest placed in a wishlist?
-- =====================================================
SELECT
    CONCAT(u.first_name, ' ', u.last_name) AS `Guest Name`,
    w.wishlist_name AS `Wishlist`,
    p.property_title AS `Property`,
    c.city_name AS `City`,
    p.base_price_per_night AS `Nightly Price`,
    wi.added_at AS `Saved At`
FROM wishlists AS w
INNER JOIN guest_profiles AS gp ON gp.guest_profile_id = w.guest_id
INNER JOIN users AS u ON u.user_id = gp.user_id
INNER JOIN wishlist_items AS wi ON wi.wishlist_id = w.wishlist_id
INNER JOIN properties AS p ON p.property_id = wi.property_id
INNER JOIN addresses AS a ON a.address_id = p.address_id
INNER JOIN cities AS c ON c.city_id = a.city_id
ORDER BY u.last_name, w.wishlist_name, p.property_title;

-- =====================================================
-- QUERY 10: Messaging history
-- Business question: What messages have guests and hosts exchanged?
-- Optional booking joins retain valid pre-booking messages.
-- =====================================================
SELECT
    CONCAT(sender.first_name, ' ', sender.last_name) AS `Sender`,
    CONCAT(receiver.first_name, ' ', receiver.last_name) AS `Receiver`,
    COALESCE(p.property_title, 'Pre-booking conversation') AS `Property / Context`,
    m.booking_id AS `Booking ID`,
    m.message_body AS `Message`,
    m.sent_at AS `Sent Time`,
    m.read_at AS `Read Time`
FROM messages AS m
INNER JOIN users AS sender ON sender.user_id = m.sender_user_id
INNER JOIN users AS receiver ON receiver.user_id = m.receiver_user_id
LEFT JOIN bookings AS b ON b.booking_id = m.booking_id
LEFT JOIN properties AS p ON p.property_id = b.property_id
ORDER BY m.sent_at;

-- =====================================================
-- QUERY 11: Property availability search
-- Business question: Which active Kolkata properties are available from
-- 2026-12-20 through 2026-12-22 for two guests at no more than INR 5,000?
-- The end parameter is exclusive, as in the bookings table.
-- =====================================================
SET @search_city = 'Kolkata';
SET @search_check_in = '2026-12-20';
SET @search_check_out = '2026-12-23';
SET @required_guests = 2;
SET @maximum_nightly_price = 5000.00;

SELECT
    p.property_id AS `Property ID`,
    p.property_title AS `Available Property`,
    c.city_name AS `City`,
    p.max_guests AS `Maximum Guests`,
    p.base_price_per_night AS `Base Nightly Price`,
    MAX(COALESCE(pa.custom_price, p.base_price_per_night)) AS `Highest Range Price`
FROM properties AS p
INNER JOIN addresses AS a ON a.address_id = p.address_id
INNER JOIN cities AS c ON c.city_id = a.city_id
INNER JOIN property_availability AS pa
    ON pa.property_id = p.property_id
   AND pa.available_date >= @search_check_in
   AND pa.available_date < @search_check_out
WHERE c.city_name = @search_city
  AND p.listing_status = 'Active'
  AND p.max_guests >= @required_guests
  AND COALESCE(pa.custom_price, p.base_price_per_night) <= @maximum_nightly_price
  AND pa.is_available = TRUE
  AND NOT EXISTS (
      SELECT 1
      FROM bookings AS occupied
      WHERE occupied.property_id = p.property_id
        AND occupied.booking_status IN ('Confirmed', 'Pending', 'Completed')
        AND occupied.check_in_date < @search_check_out
        AND occupied.check_out_date > @search_check_in
  )
GROUP BY
    p.property_id, p.property_title, c.city_name,
    p.max_guests, p.base_price_per_night
HAVING COUNT(DISTINCT pa.available_date) = DATEDIFF(@search_check_out, @search_check_in)
ORDER BY `Highest Range Price`, p.property_title;

-- =====================================================
-- QUERY 12: Popular properties
-- Business question: Which properties have received the most bookings?
-- Cancelled rows remain visible but are counted separately for transparency.
-- =====================================================
SELECT
    p.property_id AS `Property ID`,
    p.property_title AS `Property`,
    c.city_name AS `City`,
    COUNT(b.booking_id) AS `All Bookings`,
    SUM(CASE WHEN b.booking_status <> 'Cancelled' THEN 1 ELSE 0 END)
        AS `Non-cancelled Bookings`
FROM properties AS p
INNER JOIN addresses AS a ON a.address_id = p.address_id
INNER JOIN cities AS c ON c.city_id = a.city_id
INNER JOIN bookings AS b ON b.property_id = p.property_id
GROUP BY p.property_id, p.property_title, c.city_name
ORDER BY `All Bookings` DESC, `Non-cancelled Bookings` DESC, p.property_title
LIMIT 5;

-- =====================================================
-- QUERY 13: Average property rating
-- Business question: Which reviewed properties average at least four stars?
-- =====================================================
SELECT
    p.property_id AS `Property ID`,
    p.property_title AS `Property`,
    ROUND(AVG(r.rating), 2) AS `Average Rating`,
    COUNT(r.review_id) AS `Review Count`
FROM properties AS p
INNER JOIN reviews AS r ON r.property_id = p.property_id
GROUP BY p.property_id, p.property_title
HAVING AVG(r.rating) >= 4.00
ORDER BY `Average Rating` DESC, `Review Count` DESC, p.property_title;

-- =====================================================
-- QUERY 14: Open support and administration report
-- Business question: Which support cases remain unresolved, and what booking
-- or property context is available to an administrator?
-- =====================================================
SELECT
    st.ticket_id AS `Ticket ID`,
    CONCAT(requester.first_name, ' ', requester.last_name) AS `Requester`,
    st.ticket_subject AS `Subject`,
    st.ticket_status AS `Status`,
    st.booking_id AS `Booking ID`,
    p.property_title AS `Related Property`,
    aa.action_type AS `Latest Related Admin Action`,
    aa.action_at AS `Admin Action Time`,
    st.created_at AS `Opened At`
FROM support_tickets AS st
INNER JOIN users AS requester ON requester.user_id = st.user_id
LEFT JOIN bookings AS b ON b.booking_id = st.booking_id
LEFT JOIN properties AS p ON p.property_id = b.property_id
LEFT JOIN admin_actions AS aa
    ON aa.admin_action_id = (
        SELECT MAX(aa2.admin_action_id)
        FROM admin_actions AS aa2
        WHERE (aa2.target_user_id = st.user_id OR aa2.property_id = p.property_id)
    )
WHERE st.ticket_status IN ('Open', 'In Progress')
ORDER BY st.created_at;

-- =====================================================
-- QUERY 15: Booking-Payment-Payout ternary financial audit
-- Business question: Do guest payments reconcile with host payouts and fees?
-- This directly proves the financial ternary relationship in the ER model.
-- =====================================================
SELECT
    audit.audit_id AS `Audit ID`,
    b.booking_id AS `Booking ID`,
    p.property_title AS `Property`,
    b.total_amount AS `Booking Total`,
    py.payment_amount AS `Guest Payment`,
    hpo.payout_amount AS `Host Payout`,
    hpo.platform_commission AS `Platform Commission`,
    (py.payment_amount - hpo.payout_amount - hpo.platform_commission)
        AS `Reconciliation Difference`,
    audit.audit_status AS `Audit Status`,
    audit.checked_at AS `Checked Date`
FROM booking_payment_payout_audit AS audit
INNER JOIN bookings AS b ON b.booking_id = audit.booking_id
INNER JOIN payments AS py ON py.payment_id = audit.payment_id
INNER JOIN host_payouts AS hpo ON hpo.payout_id = audit.payout_id
INNER JOIN properties AS p ON p.property_id = b.property_id
ORDER BY audit.audit_id;

-- =====================================================
-- QUERY 16: Guest-Property-Wishlist ternary report
-- Business question: Which guest saved which property into which wishlist?
-- =====================================================
SELECT
    gpw.guest_property_wishlist_id AS `Ternary Record ID`,
    CONCAT(u.first_name, ' ', u.last_name) AS `Guest`,
    p.property_title AS `Saved Property`,
    w.wishlist_name AS `Wishlist`,
    gpw.saved_note AS `Saved Note`,
    gpw.saved_at AS `Saved At`
FROM guest_property_wishlist AS gpw
INNER JOIN guest_profiles AS gp ON gp.guest_profile_id = gpw.guest_id
INNER JOIN users AS u ON u.user_id = gp.user_id
INNER JOIN properties AS p ON p.property_id = gpw.property_id
INNER JOIN wishlists AS w
    ON w.wishlist_id = gpw.wishlist_id AND w.guest_id = gpw.guest_id
ORDER BY u.last_name, w.wishlist_name;

-- =====================================================
-- QUERY 17: Host-Property-Amenity ternary report
-- Business question: Which host manages each amenity for each property?
-- =====================================================
SELECT
    hpam.host_property_amenity_id AS `Ternary Record ID`,
    CONCAT(u.first_name, ' ', u.last_name) AS `Host`,
    p.property_title AS `Property`,
    am.amenity_name AS `Managed Amenity`,
    CASE WHEN hpam.is_active THEN 'Active' ELSE 'Inactive' END AS `Amenity Status`,
    hpam.added_at AS `Added At`
FROM host_property_amenity_management AS hpam
INNER JOIN host_profiles AS hp ON hp.host_profile_id = hpam.host_id
INNER JOIN users AS u ON u.user_id = hp.user_id
INNER JOIN properties AS p
    ON p.property_id = hpam.property_id AND p.host_id = hpam.host_id
INNER JOIN amenities AS am ON am.amenity_id = hpam.amenity_id
ORDER BY u.last_name, p.property_title, am.amenity_name;
