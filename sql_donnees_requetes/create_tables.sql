DROP DATABASE IF EXISTS themeskills; 

CREATE DATABASE themeskills CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE themeskills;

CREATE TABLE themes (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL UNIQUE,
	description TEXT,
    creation_date DATE NOT NULL
);

CREATE TABLE skills (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL UNIQUE,
	description TEXT,
    is_validated BOOLEAN DEFAULT FALSE,
    creation_date DATETIME NOT NULL,
    theme_id INTEGER NOT NULL,
    CONSTRAINT fk_skills_theme_id FOREIGN KEY (theme_id) REFERENCES themes(id)
);