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
-- SELECT username, posts.created_at
--   FROM users, posts
--   WHERE users.id = posts.users_id AND
--   posts.created_at > '2015-01-01';

--6
-- SELECT posts.title, posts.content, users.username
--   FROM posts, users
--   WHERE posts.users_id = users.id AND
--     users.created_at < '2015-01-01';

--7
-- SELECT comments.id, comments.body, comments.posts_id, posts.title AS "Post Title"
--   FROM comments, posts
--   WHERE comments.posts_id = posts.id;

--8
-- SELECT *, posts.title AS "post_title", posts.url AS "post_url", body AS "comment_body"
--   FROM comments
--   JOIN posts
--   ON posts.id = comments.posts_id
--   WHERE posts.created_at < '2015-01-01';

--9
-- SELECT *, posts.title AS "post_title", posts.url AS "post_url", body AS "comment_body"
--   FROM comments
--   JOIN posts
--   ON comments.posts_id = posts.id
--   WHERE posts.created_at > '2015-01-01';

--10
-- SELECT *, posts.title AS "post_title", posts.url AS "post_url", body AS "comment_body"
--   FROM comments
--   JOIN posts
--   ON comments.posts_id = posts.id
--   WHERE comments.body LIKE '%USB%';

--11
-- SELECT title AS "post_title", users.first_name, users.last_name, comments.body AS "comment_body"
--   FROM posts
--   JOIN users
--   ON posts.users_id = users.id
--   JOIN comments
--   ON comments.users_id = users.id
--   WHERE comments.body LIKE '%matrix%';

--12
-- SELECT users.first_name, users.last_name, comments.body as comment_body
-- FROM comments
-- INNER JOIN posts
-- ON comments.posts_id = posts.id
-- INNER JOIN users
-- ON posts.users_id = users.id
-- WHERE comments.body LIKE '%SSL%' AND
--   posts.content LIKE '%dolorum%';

--13
-- SELECT users.first_name AS "post_author_first_name", users.last_name AS "post_author_last_name", posts.title AS "Post_title", (
--   SELECT users.username
--     FROM users
--     WHERE comments.users_id = users.id)
--   AS "comment_author_username",
--   comments.body AS "comment_body"

--   FROM users
--   INNER JOIN posts
--   ON posts.users_id = users.id
--   INNER JOIN comments
--   ON posts.id = comments.posts_id
--   WHERE (comments.body LIKE '%SSL%' OR
--     comments.body LIKE '%firewall%') AND
--     posts.content LIKE '%nemo%';

-- SELECT posts.id AS "post_id", posts.title AS "post_title", users.id AS "user_id", comments.users_id AS "commenter_id", comments.body AS "comment_body"
--   FROM posts
--   JOIN comments
--   ON comments.posts_id = posts.id
--   JOIN users
--   ON users.id = posts.users_id
  --WHERE comments.users_id = users.id;


-- SELECT COUNT (comments.id)
--   FROM comments
--   JOIN posts
--   ON comments.posts_id = posts.id
--   where posts.created_at > '2015-07-14';

SELECT users.username
  FROM users
  JOIN comments
  ON comments.users_id = users.id
  WHERE comments.body LIKE '%programming%';
