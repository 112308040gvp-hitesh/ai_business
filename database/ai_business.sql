CREATE DATABASE ai_business;
USE ai_business;

CREATE TABLE businesses (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255),
email VARCHAR(255),
phone VARCHAR(50),
status ENUM('active','inactive') DEFAULT 'active',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE roles (
id INT AUTO_INCREMENT PRIMARY KEY,
business_id INT,
name VARCHAR(100),
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
business_id INT,
role_id INT,
name VARCHAR(255),
email VARCHAR(255),
mobile VARCHAR(20),
password VARCHAR(255),
status ENUM('active','inactive') DEFAULT 'active',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE employees (
id INT AUTO_INCREMENT PRIMARY KEY,
business_id INT,
user_id INT,
designation VARCHAR(100),
joining_date DATE,
status ENUM('active','terminated') DEFAULT 'active'
);

CREATE TABLE clients (
id INT AUTO_INCREMENT PRIMARY KEY,
business_id INT,
name VARCHAR(255),
email VARCHAR(255),
phone VARCHAR(50),
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE projects (
id INT AUTO_INCREMENT PRIMARY KEY,
business_id INT,
client_id INT,
title VARCHAR(255),
start_date DATE,
end_date DATE,
status ENUM('active','completed','hold') DEFAULT 'active'
);

CREATE TABLE tasks (
id INT AUTO_INCREMENT PRIMARY KEY,
business_id INT,
project_id INT,
assigned_to INT,
title VARCHAR(255),
due_date DATE,
status ENUM('pending','in_progress','completed') DEFAULT 'pending'
);

CREATE TABLE user_sessions (
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
login_time DATETIME DEFAULT CURRENT_TIMESTAMP,
logout_time DATETIME,
ip_address VARCHAR(100)
);