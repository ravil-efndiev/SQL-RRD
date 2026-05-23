-- create user
INSERT INTO `User`
(
    `id`,
    `username`,
    `email`,
    `name`,
    `password`
)
VALUES
(
    'generated-user-id',
    'username_here',
    'email@example.com',
    'Name Here',
    'hashed_password_here'
);

-- create session
INSERT INTO `Session`
(
    `id`,
    `userId`,
    `expiresAt`
)
VALUES
(
    'generated-session-id',
    'generated-user-id',
    DATE_ADD(NOW(3), INTERVAL 30 DAY)
);
