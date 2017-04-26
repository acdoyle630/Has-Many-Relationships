-- SELECT *
--   FROM users;

-- SELECT *
--   FROM posts
--   WHERE users_id = 100;

-- SELECT *
--   FROM users, posts
--   WHERE users.id = posts.users_id AND
--   users.id = 200;

SELECT posts.id, posts.title, posts.url, posts.content, posts.created_at, posts.updated_at, users.username
  FROM posts, users
  WHERE users.first_name = 'Norene' AND
  users.last_name = 'Schmitt' AND
  users.id = posts.users_id;