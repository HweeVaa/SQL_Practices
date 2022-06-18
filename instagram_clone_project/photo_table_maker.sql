CREATE TABLE photos(
    id integer AUTO_INCREMENT PRIMARY KEY,
    image_url varchar(255) NOT null,
    user_id int NOT null,
    created_at timestamp default now(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);