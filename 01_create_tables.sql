-- Airbnb Database System for Apartment and Room Booking
-- Schema creation script for MySQL 8.0+

DROP DATABASE IF EXISTS airbnb_booking_db;
CREATE DATABASE airbnb_booking_db
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_0900_ai_ci;
USE airbnb_booking_db;

-- Historical booking, payment, payout, review, and cancellation records use
-- restrictive foreign keys. Dependent listing details use cascading deletion.

-- =====================================================
-- TABLE: users
-- Purpose: Stores general platform user information.
-- =====================================================
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    phone_number VARCHAR(30),
    date_of_birth DATE,
    gender VARCHAR(30),
    profile_photo_url VARCHAR(255),
    user_status VARCHAR(30) NOT NULL DEFAULT 'Active',
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT uq_users_email UNIQUE (email)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: user_roles
-- Purpose: Defines the available platform roles.
-- =====================================================
CREATE TABLE user_roles (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL,
    role_description VARCHAR(255),
    CONSTRAINT uq_user_roles_name UNIQUE (role_name)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: user_role_assignments
-- Purpose: Assigns one or more roles to each user.
-- =====================================================
CREATE TABLE user_role_assignments (
    user_role_assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    role_id INT NOT NULL,
    assigned_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT uq_user_role_assignment UNIQUE (user_id, role_id),
    CONSTRAINT fk_role_assignments_user FOREIGN KEY (user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_role_assignments_role FOREIGN KEY (role_id)
        REFERENCES user_roles(role_id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: guest_profiles
-- Purpose: Stores guest-specific identity and preference details.
-- =====================================================
CREATE TABLE guest_profiles (
    guest_profile_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    government_id_type VARCHAR(50),
    government_id_number VARCHAR(100),
    emergency_contact_name VARCHAR(100),
    emergency_contact_phone VARCHAR(30),
    preferred_language VARCHAR(50),
    guest_bio TEXT,
    CONSTRAINT uq_guest_profiles_user UNIQUE (user_id),
    CONSTRAINT fk_guest_profiles_user FOREIGN KEY (user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: host_profiles
-- Purpose: Stores host-specific platform information.
-- =====================================================
CREATE TABLE host_profiles (
    host_profile_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    host_since DATE NOT NULL,
    host_about TEXT,
    response_rate DECIMAL(5,2),
    response_time VARCHAR(50),
    is_superhost BOOLEAN NOT NULL DEFAULT FALSE,
    host_status VARCHAR(30) NOT NULL DEFAULT 'Active',
    CONSTRAINT uq_host_profiles_user UNIQUE (user_id),
    CONSTRAINT chk_host_response_rate CHECK (
        response_rate IS NULL OR response_rate BETWEEN 0 AND 100
    ),
    CONSTRAINT fk_host_profiles_user FOREIGN KEY (user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: social_accounts
-- Purpose: Records external social profiles connected by users.
-- =====================================================
CREATE TABLE social_accounts (
    social_account_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    platform_name VARCHAR(50) NOT NULL,
    profile_url VARCHAR(255) NOT NULL,
    connected_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_social_accounts_user FOREIGN KEY (user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: countries
-- Purpose: Provides normalized country lookup data.
-- =====================================================
CREATE TABLE countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    country_code VARCHAR(10) NOT NULL,
    CONSTRAINT uq_countries_name UNIQUE (country_name),
    CONSTRAINT uq_countries_code UNIQUE (country_code)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: cities
-- Purpose: Stores cities and their country associations.
-- =====================================================
CREATE TABLE cities (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    country_id INT NOT NULL,
    city_name VARCHAR(100) NOT NULL,
    state_region VARCHAR(100),
    postal_code VARCHAR(20),
    CONSTRAINT fk_cities_country FOREIGN KEY (country_id)
        REFERENCES countries(country_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_cities_country (country_id),
    INDEX idx_cities_name (city_name)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: addresses
-- Purpose: Stores physical locations used by property listings.
-- =====================================================
CREATE TABLE addresses (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    city_id INT NOT NULL,
    street_address VARCHAR(255) NOT NULL,
    latitude DECIMAL(10,8),
    longitude DECIMAL(11,8),
    full_address TEXT NOT NULL,
    CONSTRAINT chk_addresses_latitude CHECK (
        latitude IS NULL OR latitude BETWEEN -90 AND 90
    ),
    CONSTRAINT chk_addresses_longitude CHECK (
        longitude IS NULL OR longitude BETWEEN -180 AND 180
    ),
    CONSTRAINT fk_addresses_city FOREIGN KEY (city_id)
        REFERENCES cities(city_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_addresses_city (city_id)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: properties
-- Purpose: Stores accommodation listings managed by hosts.
-- =====================================================
CREATE TABLE properties (
    property_id INT AUTO_INCREMENT PRIMARY KEY,
    host_id INT NOT NULL,
    address_id INT NOT NULL,
    property_title VARCHAR(150) NOT NULL,
    property_description TEXT,
    property_type VARCHAR(50) NOT NULL,
    room_type VARCHAR(50) NOT NULL,
    max_guests INT NOT NULL,
    bedrooms INT NOT NULL DEFAULT 0,
    beds INT NOT NULL DEFAULT 0,
    bathrooms DECIMAL(3,1) NOT NULL DEFAULT 0,
    base_price_per_night DECIMAL(10,2) NOT NULL,
    cleaning_fee DECIMAL(10,2) NOT NULL DEFAULT 0,
    minimum_nights INT NOT NULL DEFAULT 1,
    maximum_nights INT NOT NULL,
    listing_status VARCHAR(30) NOT NULL DEFAULT 'Active',
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT chk_properties_guests CHECK (max_guests > 0),
    CONSTRAINT chk_properties_bedrooms CHECK (bedrooms >= 0),
    CONSTRAINT chk_properties_beds CHECK (beds >= 0),
    CONSTRAINT chk_properties_bathrooms CHECK (bathrooms >= 0),
    CONSTRAINT chk_properties_base_price CHECK (base_price_per_night >= 0),
    CONSTRAINT chk_properties_cleaning_fee CHECK (cleaning_fee >= 0),
    CONSTRAINT chk_properties_minimum_nights CHECK (minimum_nights > 0),
    CONSTRAINT chk_properties_maximum_nights CHECK (maximum_nights >= minimum_nights),
    CONSTRAINT fk_properties_host FOREIGN KEY (host_id)
        REFERENCES host_profiles(host_profile_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_properties_address FOREIGN KEY (address_id)
        REFERENCES addresses(address_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_properties_host (host_id),
    INDEX idx_properties_address (address_id),
    INDEX idx_properties_status (listing_status),
    INDEX idx_properties_price (base_price_per_night)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: property_photos
-- Purpose: Stores images belonging to property listings.
-- =====================================================
CREATE TABLE property_photos (
    photo_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    photo_url VARCHAR(255) NOT NULL,
    caption VARCHAR(255),
    is_cover_photo BOOLEAN NOT NULL DEFAULT FALSE,
    uploaded_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_property_photos_property FOREIGN KEY (property_id)
        REFERENCES properties(property_id) ON UPDATE CASCADE ON DELETE CASCADE,
    INDEX idx_property_photos_property (property_id)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: amenities
-- Purpose: Defines amenities that may be offered by properties.
-- =====================================================
CREATE TABLE amenities (
    amenity_id INT AUTO_INCREMENT PRIMARY KEY,
    amenity_name VARCHAR(100) NOT NULL,
    amenity_category VARCHAR(100) NOT NULL,
    CONSTRAINT uq_amenities_name UNIQUE (amenity_name)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: property_amenities
-- Purpose: Resolves the many-to-many property-to-amenity relationship.
-- =====================================================
CREATE TABLE property_amenities (
    property_amenity_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    amenity_id INT NOT NULL,
    CONSTRAINT uq_property_amenity UNIQUE (property_id, amenity_id),
    CONSTRAINT fk_property_amenities_property FOREIGN KEY (property_id)
        REFERENCES properties(property_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_property_amenities_amenity FOREIGN KEY (amenity_id)
        REFERENCES amenities(amenity_id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: house_rules
-- Purpose: Defines reusable guest conduct rules.
-- =====================================================
CREATE TABLE house_rules (
    rule_id INT AUTO_INCREMENT PRIMARY KEY,
    rule_name VARCHAR(100) NOT NULL,
    rule_description VARCHAR(255),
    CONSTRAINT uq_house_rules_name UNIQUE (rule_name)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: property_house_rules
-- Purpose: Resolves the many-to-many property-to-rule relationship.
-- =====================================================
CREATE TABLE property_house_rules (
    property_house_rule_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    rule_id INT NOT NULL,
    CONSTRAINT uq_property_house_rule UNIQUE (property_id, rule_id),
    CONSTRAINT fk_property_rules_property FOREIGN KEY (property_id)
        REFERENCES properties(property_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_property_rules_rule FOREIGN KEY (rule_id)
        REFERENCES house_rules(rule_id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: bookings
-- Purpose: Stores guest reservations and their calculated charges.
-- =====================================================
CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    guest_id INT NOT NULL,
    property_id INT NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    number_of_guests INT NOT NULL,
    booking_status VARCHAR(30) NOT NULL DEFAULT 'Pending',
    total_nights INT NOT NULL,
    subtotal_amount DECIMAL(10,2) NOT NULL,
    service_fee DECIMAL(10,2) NOT NULL DEFAULT 0,
    cleaning_fee DECIMAL(10,2) NOT NULL DEFAULT 0,
    total_amount DECIMAL(10,2) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT chk_bookings_dates CHECK (check_out_date > check_in_date),
    CONSTRAINT chk_bookings_guests CHECK (number_of_guests > 0),
    CONSTRAINT chk_bookings_nights CHECK (total_nights > 0),
    CONSTRAINT chk_bookings_subtotal CHECK (subtotal_amount >= 0),
    CONSTRAINT chk_bookings_service_fee CHECK (service_fee >= 0),
    CONSTRAINT chk_bookings_cleaning_fee CHECK (cleaning_fee >= 0),
    CONSTRAINT chk_bookings_total CHECK (total_amount >= 0),
    CONSTRAINT fk_bookings_guest FOREIGN KEY (guest_id)
        REFERENCES guest_profiles(guest_profile_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_bookings_property FOREIGN KEY (property_id)
        REFERENCES properties(property_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_bookings_guest (guest_id),
    INDEX idx_bookings_property (property_id),
    INDEX idx_bookings_dates (check_in_date, check_out_date),
    INDEX idx_bookings_status (booking_status)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: payment_methods
-- Purpose: Stores tokenized or masked user payment instruments.
-- =====================================================
CREATE TABLE payment_methods (
    payment_method_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    method_type VARCHAR(50) NOT NULL,
    provider_name VARCHAR(50) NOT NULL,
    masked_card_number VARCHAR(30),
    expiry_month INT,
    expiry_year INT,
    is_default BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT chk_payment_methods_month CHECK (
        expiry_month IS NULL OR expiry_month BETWEEN 1 AND 12
    ),
    CONSTRAINT fk_payment_methods_user FOREIGN KEY (user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_payment_methods_user (user_id)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: payments
-- Purpose: Stores the optional single payment associated with a booking.
-- =====================================================
CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL,
    payment_method_id INT NOT NULL,
    payment_amount DECIMAL(10,2) NOT NULL,
    payment_status VARCHAR(30) NOT NULL,
    transaction_reference VARCHAR(150) NOT NULL,
    paid_at DATETIME,
    CONSTRAINT uq_payments_booking UNIQUE (booking_id),
    CONSTRAINT uq_payments_transaction UNIQUE (transaction_reference),
    CONSTRAINT chk_payments_amount CHECK (payment_amount >= 0),
    CONSTRAINT fk_payments_booking FOREIGN KEY (booking_id)
        REFERENCES bookings(booking_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_payments_method FOREIGN KEY (payment_method_id)
        REFERENCES payment_methods(payment_method_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_payments_status (payment_status)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: host_payouts
-- Purpose: Stores the optional single host settlement for a booking.
-- =====================================================
CREATE TABLE host_payouts (
    payout_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL,
    host_id INT NOT NULL,
    payout_amount DECIMAL(10,2) NOT NULL,
    platform_commission DECIMAL(10,2) NOT NULL DEFAULT 0,
    payout_status VARCHAR(30) NOT NULL,
    scheduled_release_at DATETIME NOT NULL,
    released_at DATETIME,
    CONSTRAINT uq_host_payouts_booking UNIQUE (booking_id),
    CONSTRAINT chk_host_payout_amount CHECK (payout_amount >= 0),
    CONSTRAINT chk_host_payout_commission CHECK (platform_commission >= 0),
    CONSTRAINT fk_host_payouts_booking FOREIGN KEY (booking_id)
        REFERENCES bookings(booking_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_host_payouts_host FOREIGN KEY (host_id)
        REFERENCES host_profiles(host_profile_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_host_payouts_host (host_id),
    INDEX idx_host_payouts_status (payout_status)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: cancellations
-- Purpose: Records the optional cancellation and refund for a booking.
-- =====================================================
CREATE TABLE cancellations (
    cancellation_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL,
    cancelled_by_user_id INT NOT NULL,
    cancellation_reason TEXT NOT NULL,
    refund_amount DECIMAL(10,2) NOT NULL DEFAULT 0,
    cancelled_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT uq_cancellations_booking UNIQUE (booking_id),
    CONSTRAINT chk_cancellations_refund CHECK (refund_amount >= 0),
    CONSTRAINT fk_cancellations_booking FOREIGN KEY (booking_id)
        REFERENCES bookings(booking_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_cancellations_user FOREIGN KEY (cancelled_by_user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: reviews
-- Purpose: Stores property and user reviews tied to bookings.
-- =====================================================
CREATE TABLE reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL,
    reviewer_user_id INT NOT NULL,
    reviewed_user_id INT NOT NULL,
    property_id INT NOT NULL,
    rating INT NOT NULL,
    review_comment TEXT,
    review_type VARCHAR(30) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_reviews_rating CHECK (rating BETWEEN 1 AND 5),
    CONSTRAINT fk_reviews_booking FOREIGN KEY (booking_id)
        REFERENCES bookings(booking_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_reviews_reviewer FOREIGN KEY (reviewer_user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_reviews_reviewed_user FOREIGN KEY (reviewed_user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_reviews_property FOREIGN KEY (property_id)
        REFERENCES properties(property_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_reviews_property (property_id),
    INDEX idx_reviews_reviewed_user (reviewed_user_id)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: messages
-- Purpose: Stores pre-booking and booking-related user conversations.
-- =====================================================
CREATE TABLE messages (
    message_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NULL,
    sender_user_id INT NOT NULL,
    receiver_user_id INT NOT NULL,
    message_body TEXT NOT NULL,
    sent_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    read_at DATETIME,
    CONSTRAINT fk_messages_booking FOREIGN KEY (booking_id)
        REFERENCES bookings(booking_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_messages_sender FOREIGN KEY (sender_user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_messages_receiver FOREIGN KEY (receiver_user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_messages_sender (sender_user_id),
    INDEX idx_messages_receiver (receiver_user_id),
    INDEX idx_messages_booking (booking_id)
) ENGINE = InnoDB;

-- booking_id is nullable above so guests may contact hosts before reserving.

-- =====================================================
-- TABLE: wishlists
-- Purpose: Stores named property collections created by guests.
-- =====================================================
CREATE TABLE wishlists (
    wishlist_id INT AUTO_INCREMENT PRIMARY KEY,
    guest_id INT NOT NULL,
    wishlist_name VARCHAR(100) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_wishlists_guest FOREIGN KEY (guest_id)
        REFERENCES guest_profiles(guest_profile_id) ON UPDATE CASCADE ON DELETE CASCADE,
    INDEX idx_wishlists_guest (guest_id)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: wishlist_items
-- Purpose: Stores properties placed in a guest wishlist.
-- =====================================================
CREATE TABLE wishlist_items (
    wishlist_item_id INT AUTO_INCREMENT PRIMARY KEY,
    wishlist_id INT NOT NULL,
    property_id INT NOT NULL,
    added_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT uq_wishlist_item UNIQUE (wishlist_id, property_id),
    CONSTRAINT fk_wishlist_items_wishlist FOREIGN KEY (wishlist_id)
        REFERENCES wishlists(wishlist_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_wishlist_items_property FOREIGN KEY (property_id)
        REFERENCES properties(property_id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: property_availability
-- Purpose: Stores date-level listing availability and custom prices.
-- =====================================================
CREATE TABLE property_availability (
    availability_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    available_date DATE NOT NULL,
    is_available BOOLEAN NOT NULL DEFAULT TRUE,
    custom_price DECIMAL(10,2),
    CONSTRAINT uq_property_availability UNIQUE (property_id, available_date),
    CONSTRAINT chk_availability_price CHECK (custom_price IS NULL OR custom_price >= 0),
    CONSTRAINT fk_availability_property FOREIGN KEY (property_id)
        REFERENCES properties(property_id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB;

-- The unique key above also supports property/date availability lookups.

-- =====================================================
-- TABLE: seasonal_prices
-- Purpose: Stores date-range pricing rules for listings.
-- =====================================================
CREATE TABLE seasonal_prices (
    seasonal_price_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    season_name VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    price_per_night DECIMAL(10,2) NOT NULL,
    CONSTRAINT chk_seasonal_prices_dates CHECK (end_date >= start_date),
    CONSTRAINT chk_seasonal_prices_amount CHECK (price_per_night >= 0),
    CONSTRAINT fk_seasonal_prices_property FOREIGN KEY (property_id)
        REFERENCES properties(property_id) ON UPDATE CASCADE ON DELETE CASCADE,
    INDEX idx_seasonal_prices_range (property_id, start_date, end_date)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: search_logs
-- Purpose: Records guest search criteria for analysis.
-- =====================================================
CREATE TABLE search_logs (
    search_log_id INT AUTO_INCREMENT PRIMARY KEY,
    guest_id INT NOT NULL,
    city_id INT NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    number_of_guests INT NOT NULL,
    min_price DECIMAL(10,2),
    max_price DECIMAL(10,2),
    searched_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_search_logs_dates CHECK (check_out_date > check_in_date),
    CONSTRAINT chk_search_logs_guests CHECK (number_of_guests > 0),
    CONSTRAINT chk_search_logs_min_price CHECK (min_price IS NULL OR min_price >= 0),
    CONSTRAINT chk_search_logs_max_price CHECK (max_price IS NULL OR max_price >= 0),
    CONSTRAINT chk_search_logs_price_range CHECK (
        min_price IS NULL OR max_price IS NULL OR max_price >= min_price
    ),
    CONSTRAINT fk_search_logs_guest FOREIGN KEY (guest_id)
        REFERENCES guest_profiles(guest_profile_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_search_logs_city FOREIGN KEY (city_id)
        REFERENCES cities(city_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_search_logs_guest (guest_id),
    INDEX idx_search_logs_city (city_id)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: support_tickets
-- Purpose: Tracks platform support cases, optionally tied to bookings.
-- =====================================================
CREATE TABLE support_tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    booking_id INT NULL,
    ticket_subject VARCHAR(150) NOT NULL,
    ticket_description TEXT NOT NULL,
    ticket_status VARCHAR(30) NOT NULL DEFAULT 'Open',
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    resolved_at DATETIME,
    CONSTRAINT fk_support_tickets_user FOREIGN KEY (user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_support_tickets_booking FOREIGN KEY (booking_id)
        REFERENCES bookings(booking_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_support_tickets_status (ticket_status),
    INDEX idx_support_tickets_user (user_id),
    INDEX idx_support_tickets_booking (booking_id)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: admin_actions
-- Purpose: Provides an audit trail of administrative interventions.
-- =====================================================
CREATE TABLE admin_actions (
    admin_action_id INT AUTO_INCREMENT PRIMARY KEY,
    admin_user_id INT NOT NULL,
    target_user_id INT NULL,
    property_id INT NULL,
    action_type VARCHAR(100) NOT NULL,
    action_description TEXT NOT NULL,
    action_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_admin_actions_admin FOREIGN KEY (admin_user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_admin_actions_target_user FOREIGN KEY (target_user_id)
        REFERENCES users(user_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_admin_actions_property FOREIGN KEY (property_id)
        REFERENCES properties(property_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    INDEX idx_admin_actions_admin (admin_user_id),
    INDEX idx_admin_actions_target (target_user_id),
    INDEX idx_admin_actions_property (property_id)
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: guest_property_wishlist
-- Purpose: Represents the Guest-Property-Wishlist ternary relationship.
-- =====================================================
CREATE TABLE guest_property_wishlist (
    guest_property_wishlist_id INT AUTO_INCREMENT PRIMARY KEY,
    guest_id INT NOT NULL,
    property_id INT NOT NULL,
    wishlist_id INT NOT NULL,
    saved_note VARCHAR(255),
    saved_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT uq_guest_property_wishlist UNIQUE (guest_id, property_id, wishlist_id),
    CONSTRAINT fk_gpw_guest FOREIGN KEY (guest_id)
        REFERENCES guest_profiles(guest_profile_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_gpw_property FOREIGN KEY (property_id)
        REFERENCES properties(property_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_gpw_wishlist FOREIGN KEY (wishlist_id)
        REFERENCES wishlists(wishlist_id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: host_property_amenity_management
-- Purpose: Represents the Host-Property-Amenity ternary relationship.
-- =====================================================
CREATE TABLE host_property_amenity_management (
    host_property_amenity_id INT AUTO_INCREMENT PRIMARY KEY,
    host_id INT NOT NULL,
    property_id INT NOT NULL,
    amenity_id INT NOT NULL,
    added_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    CONSTRAINT uq_host_property_amenity UNIQUE (host_id, property_id, amenity_id),
    CONSTRAINT fk_hpam_host FOREIGN KEY (host_id)
        REFERENCES host_profiles(host_profile_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_hpam_property FOREIGN KEY (property_id)
        REFERENCES properties(property_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_hpam_amenity FOREIGN KEY (amenity_id)
        REFERENCES amenities(amenity_id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;

-- =====================================================
-- TABLE: booking_payment_payout_audit
-- Purpose: Represents the Booking-Payment-Payout ternary audit relationship.
-- =====================================================
CREATE TABLE booking_payment_payout_audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL,
    payment_id INT NOT NULL,
    payout_id INT NOT NULL,
    audit_status VARCHAR(50) NOT NULL,
    checked_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    remarks TEXT,
    CONSTRAINT uq_booking_payment_payout UNIQUE (booking_id, payment_id, payout_id),
    CONSTRAINT fk_bppa_booking FOREIGN KEY (booking_id)
        REFERENCES bookings(booking_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_bppa_payment FOREIGN KEY (payment_id)
        REFERENCES payments(payment_id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_bppa_payout FOREIGN KEY (payout_id)
        REFERENCES host_payouts(payout_id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE = InnoDB;
