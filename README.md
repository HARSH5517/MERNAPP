# Airbnb Database System for Apartment and Room Booking

## 1. Project Overview

This project implements a relational database for an Airbnb-style accommodation booking platform. It supports user and profile management, host property management, normalized property locations, bookings, payments, host payouts, cancellations, reviews, messaging, wishlists, availability calendars, seasonal pricing, support cases, and administrative oversight.

All names, contact details, identifiers, listings, and transactions in the sample dataset are fictional and intended solely for academic testing.

## 2. Project Objectives

The implementation demonstrates how a normalized relational model can support realistic accommodation workflows. Its objectives are to:

- preserve entity relationships from the project ER model;
- enforce referential integrity through primary and foreign keys;
- prevent invalid or duplicate records through unique and check constraints;
- represent complete booking, payment, payout, and cancellation workflows;
- retain important transactional history through restrictive deletion rules; and
- answer realistic business questions using joins, aggregations, subqueries, and MySQL functions.

## 3. Technologies Used

- MySQL 8.0+
- MySQL Workbench
- SQL
- Relational Database Design

## 4. Database Design

The `airbnb_booking_db` database contains 32 tables organized into the following areas.

### User and Profile Management

- `users`
- `user_roles`
- `user_role_assignments`
- `guest_profiles`
- `host_profiles`
- `social_accounts`

### Location and Property Management

- `countries`
- `cities`
- `addresses`
- `properties`
- `property_photos`
- `amenities`
- `property_amenities`
- `house_rules`
- `property_house_rules`

### Booking and Financial Management

- `bookings`
- `payment_methods`
- `payments`
- `host_payouts`
- `cancellations`

### Communication and Engagement

- `reviews`
- `messages`
- `wishlists`
- `wishlist_items`

### Pricing and Availability

- `property_availability`
- `seasonal_prices`
- `search_logs`

### Support and Administration

- `support_tickets`
- `admin_actions`

### Ternary Relationship Tables

- `guest_property_wishlist`
- `host_property_amenity_management`
- `booking_payment_payout_audit`

## 5. Important Relationships

A user may have at most one guest profile and at most one host profile. Role assignments allow a user to be a guest, host, administrator, or to hold multiple roles. A host may own many properties, while each property is linked through an address and city to a country.

A guest may create many bookings, and a property may receive many bookings. Each booking may have at most one payment, one host payout, and one cancellation. Properties and amenities have a many-to-many relationship through `property_amenities`; properties and house rules use `property_house_rules`. A guest may create multiple wishlists, each containing multiple properties.

## 6. Ternary Relationships

The ER model contains three explicit ternary relationships:

1. **Guest–Property–Wishlist:** `guest_property_wishlist` records which guest saved which property into a particular wishlist, together with a note and timestamp.
2. **Host–Property–Amenity:** `host_property_amenity_management` records which host activated or managed an amenity for a specific property.
3. **Booking–Payment–Payout:** `booking_payment_payout_audit` links a booking, its guest payment, and its host payout for financial reconciliation.

Each ternary table has foreign keys to all three participating entities and a composite unique constraint that prevents duplicate combinations.

## 7. File Structure

```text
airbnb-database-system/
├── 01_create_tables.sql
├── 02_insert_data.sql
├── 03_test_queries.sql
└── README.md
```

- `01_create_tables.sql` creates the database, 32 tables, keys, constraints, and indexes.
- `02_insert_data.sql` inserts realistic fictional sample data and verifies every table with `SELECT *` immediately after its insert section.
- `03_test_queries.sql` contains 17 join, aggregation, availability, support, and ternary-relationship tests.
- `README.md` documents the database and execution process.

## 8. How to Run

1. Open MySQL Workbench.
2. Connect to a MySQL 8.0 or later server.
3. Open `01_create_tables.sql` and execute the entire script.
4. Open `02_insert_data.sql` and execute the entire script.
5. Confirm that MySQL Workbench shows a result set for every table.
6. Open `03_test_queries.sql`.
7. Execute the queries individually or run the whole file.

The scripts are intentionally ordered and should be run in that sequence. The first script drops and recreates `airbnb_booking_db`, so rerunning it removes existing data in that database.

## 9. Example Business Questions

The testing script answers questions such as:

- Which guest booked which property?
- Which active properties are available in a selected city and date range?
- What amenities and house rules apply to each property?
- What booking value, payout, and commission has each host generated?
- Which bookings were cancelled and how much was refunded?
- Which payments and payouts belong to a booking?
- Which properties are most popular and highest rated?
- Which properties did guests save to wishlists?
- Which support cases remain unresolved?

## 10. Database Integrity

Every table has a primary key. Foreign keys enforce relationships between users, profiles, locations, properties, bookings, and related records. Unique constraints enforce one-to-zero-or-one relationships and prevent duplicate bridge or ternary combinations. Check constraints validate ratings, dates, guest counts, percentages, prices, fees, and other domain values.

Bridge tables implement many-to-many relationships without repeating data. Cascading deletion is limited mainly to dependent listing and bridge records. Transactional and financial entities use restrictive deletion rules so that historical bookings, payments, payouts, reviews, and cancellations cannot be removed accidentally through a parent deletion.

## 11. Testing

The 17 test queries verify relationship paths with `INNER JOIN` and `LEFT JOIN`, duplicate table aliases, `GROUP_CONCAT`, `COUNT`, `SUM`, `AVG`, `CASE`, `HAVING`, sorting, limiting, and a `NOT EXISTS` overlap check. The queries also demonstrate each ternary relationship and reconcile guest payments with host payouts and platform commission.

## 12. Conclusion

This implementation demonstrates a normalized, multi-entity accommodation booking database suitable for realistic Airbnb-style operations. It preserves the academic ER model while providing enforceable integrity rules, coherent sample workflows, and practical business reporting.
