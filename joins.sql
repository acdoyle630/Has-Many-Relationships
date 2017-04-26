-- SELECT *
--   FROM users;

-- SELECT *
--   FROM posts
--   WHERE users_id = 100;

SELECT *
  FROM users, posts
  WHERE users.id = posts.users_id AND
  users.id = 200;
