CREATE TABLE IF NOT EXISTS users
(
    id       BIGSERIAL PRIMARY KEY,
    username TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS posts
(
    id      BIGSERIAL PRIMARY KEY,
    title   TEXT NOT NULL,
    body    TEXT NOT NULL,
    user_id BIGINT NOT NULL
        REFERENCES users (id) ON DELETE CASCADE
);

