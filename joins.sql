--1
-- SELECT *
--   FROM users;

--2
-- SELECT *
--   FROM posts
--   WHERE users_id = 100;

--3
-- SELECT *
--   FROM users, posts
--   WHERE users.id = posts.users_id AND
--   users.id = 200;

--4
-- SELECT posts.id, posts.title, posts.url, posts.content, posts.created_at, posts.updated_at, users.username
--   FROM posts, users
--   WHERE users.first_name = 'Norene' AND
--   users.last_name = 'Schmitt' AND
--   users.id = posts.users_id;

--5
SELECT username, posts.created_at
  FROM users, posts
  WHERE users.id = posts.users_id AND
  posts.created_at > '2015-01-01';
