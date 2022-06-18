CREATE TABLE comments(
    id int AUTO_INCREMENT PRIMARY KEY,
    comment_text varchar(255) NOT NULL,
    user_id int NOT null,
    photo_id int NOT null,
    created_at timestamp DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id)

);