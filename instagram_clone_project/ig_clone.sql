-- create database ig_clone
CREATE DATABASE ig_clone;
USE ig_clone;


-- create tables
CREATE TABLE users(
    id int AUTO_INCREMENT PRIMARY KEY,
    username varchar (255) UNIQUE NOT null,
    created_at timestamp DEFAULT NOW()
);

CREATE TABLE photos(
    id integer AUTO_INCREMENT PRIMARY KEY,
    image_url varchar(255) NOT null,
    user_id int NOT null,
    created_at timestamp default now(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE comments(
    id int AUTO_INCREMENT PRIMARY KEY,
    comment_text varchar(255) NOT NULL,
    user_id int NOT null,
    photo_id int NOT null,
    created_at timestamp DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id)

);

CREATE TABLE likes(
    user_id int not null,
    photo_id int not null,
    created_at timestamp DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    PRIMARY KEY(user_id, photo_id)
);


CREATE TABLE follows(
    follower_id int not null,
    followee_id int not null,
    created_at timestamp default now(),
    FOREIGN KEY (follower_id) REFERENCES users(id),
    FOREIGN KEY (followee_id) REFERENCES users(id),
    PRIMARY KEY (follower_id, followee_id)
);


CREATE TABLE tags (
    id int AUTO_INCREMENT PRIMARY KEY,
    tag_name varchar(255) UNIQUE,
    created_at timestamp default now()
);

CREATE TABLE photo_tags (
    photo_id int not null,
    tag_id int not null,
    FOREIGN KEY (photo_id) REFERENCES photos(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id),
    PRIMARY KEY (photo_id,tag_id)
);