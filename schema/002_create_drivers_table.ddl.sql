DROP TABLE IF EXISTS drivers;

CREATE TABLE drivers(
  driver_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(32) NOT NULL,
  last_name VARCHAR(32) NOT NULL,
  id_number VARCHAR(16) UNIQUE NOT NULL,
  license_valid_until DATE NOT NULL,
  gender ENUM('f', 'm'),
  birth_date DATE NOT NULL,
  employment_date DATE NOT NULL,
  status ENUM('active', 'fired', 'resigned', 'suspended', 'inactive') NOT NULL DEFAULT 'active'
);