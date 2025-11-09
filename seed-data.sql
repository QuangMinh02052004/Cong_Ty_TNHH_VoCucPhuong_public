-- ===============================================
-- SEED DATA FOR XE VÕ CÚC PHƯƠNG
-- ===============================================
-- Chạy file này trong Neon SQL Editor để thêm dữ liệu mẫu

-- Insert Routes (8 tuyến đường)
INSERT INTO "routes" ("id", "from", "to", "price", "duration", "busType", "distance", "operatingStart", "operatingEnd", "intervalMinutes", "isActive", "createdAt", "updatedAt") VALUES
('1', 'Long Khánh', 'Sài Gòn (Cao tốc)', 120000, '1.5 giờ', 'Ghế ngồi', '65 km', '05:00', '18:00', 60, true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('2', 'Long Khánh', 'Sài Gòn (Quốc lộ)', 110000, '2 giờ', 'Ghế ngồi', '75 km', '05:00', '18:00', 60, true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('3', 'Sài Gòn', 'Long Khánh (Cao tốc)', 120000, '1.5 giờ', 'Ghế ngồi', '65 km', '05:00', '18:00', 60, true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('4', 'Sài Gòn', 'Long Khánh (Quốc lộ)', 110000, '~ 2 giờ 30 phút', 'Ghế ngồi', '75 km', '05:00', '18:00', 60, true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('5', 'Sài Gòn', 'Xuân Lộc (Cao tốc)', 130000, '2 giờ ~ 4 giờ', 'Ghế ngồi', '110 km', '05:30', '19:00', 90, true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('6', 'Quốc Lộ 1A', 'Xuân Lộc (Quốc lộ)', 130000, '1.5 giờ ~ 4 tiếng', 'Ghế ngồi', '115 km', '05:30', '19:00', 90, true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('7', 'Xuân Lộc', 'Long Khánh (Cao tốc)', 130000, '1 giờ', 'Ghế ngồi', '45 km', '05:30', '19:00', 90, true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('8', 'Xuân Lộc', 'Long Khánh (Quốc lộ)', 130000, '1.5 giờ', 'Ghế ngồi', '50 km', '05:30', '19:00', 90, true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
ON CONFLICT ("id") DO NOTHING;

-- Insert Buses (3 xe mẫu)
INSERT INTO "buses" ("id", "licensePlate", "busType", "totalSeats", "status", "createdAt", "updatedAt") VALUES
('bus1', '51B-12345', 'Ghế ngồi 28 chỗ', 28, 'ACTIVE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('bus2', '51B-67890', 'Ghế ngồi 28 chỗ', 28, 'ACTIVE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('bus3', '51B-11111', 'Ghế ngồi 45 chỗ', 45, 'ACTIVE', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)
ON CONFLICT ("licensePlate") DO NOTHING;

-- Insert Users (Admin, Staff, User)
INSERT INTO "users" ("id", "email", "password", "name", "phone", "role", "createdAt", "updatedAt")
SELECT 'admin1', 'admin@vocucphuong.com', '$2b$10$44CKCMGJDX2hMFnV8rPZ5u7BO0oGwzuYYHslk4KwMr3pI02tFgBZ2', 'Quản trị viên', '02519999975', 'ADMIN', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM "users" WHERE email = 'admin@vocucphuong.com');

INSERT INTO "users" ("id", "email", "password", "name", "phone", "role", "createdAt", "updatedAt")
SELECT 'staff1', 'staff@vocucphuong.com', '$2b$10$/lueWP3kbYd4sffyuH8bIuN67beyT69Arau0hNPKHNtgs95.bc1Hq', 'Nhân viên', '02519999975', 'STAFF', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM "users" WHERE email = 'staff@vocucphuong.com');

INSERT INTO "users" ("id", "email", "password", "name", "phone", "role", "createdAt", "updatedAt")
SELECT 'user1', 'user@example.com', '$2b$10$R5HJ.ALalJo46FNmc1TCtOuJ/4g5j1B/Ymxiq3anoeAJD4RATWH6a', 'Nguyễn Văn A', '0987654321', 'USER', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP
WHERE NOT EXISTS (SELECT 1 FROM "users" WHERE email = 'user@example.com');

-- ===============================================
-- SEED COMPLETED
-- ===============================================
--
-- Thông tin đăng nhập:
--
-- ADMIN:
--   Email: admin@vocucphuong.com
--   Password: admin123456
--
-- STAFF:
--   Email: staff@vocucphuong.com
--   Password: staff123456
--
-- USER:
--   Email: user@example.com
--   Password: user123456
-- ===============================================
