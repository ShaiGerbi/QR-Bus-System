DROP TABLE IF EXISTS buses;

CREATE TABLE buses(
  bus_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  license_plate VARCHAR(16) UNIQUE NOT NULL,
  manufacturer VARCHAR(32) NOT NULL,
  model VARCHAR(32) NOT NULL,
  manufacture_year YEAR NOT NULL,
  status ENUM('active', 'in maintenance', 'out of service') NOT NULL DEFAULT 'active'
);