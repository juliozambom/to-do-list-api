CREATE DATABASE to_do_list;

USE to_do_list;

CREATE TABLE IF NOT EXISTS users(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(128) NOT NULL,
    email VARCHAR(128) NOT NULL,
    password VARCHAR(128) NOT NULL
);

CREATE TABLE IF NOT EXISTS notes(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    title VARCHAR(128) NOT NULL,
    text VARCHAR(1256) NOT NULL,
    is_cheked BOOL NOT NULL,
    date VARCHAR(128) NOT NULL,
    user_id INT,
    FOREIGN KEY(user_id) REFERENCES users(id)
);