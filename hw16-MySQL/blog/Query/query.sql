-- 1 each writer's Article count-----------------------------------------------------
SELECT first_name, last_name, count(*) as article_count FROM blog.writer as w join blog.article as a on w.id = a.writer_id group by first_name,last_name;

-- 2 Articles for writer x with witer name ---------------------------------------------------------------------------------------------------------------
SELECT first_name, last_name, title FROM blog.writer join blog.article 
on writer.id = article.writer_id where writer.first_name = 'Ellis';

-- 3 writer x articles in y category---------------------------------------------------------------------------------------------------------------
SELECT first_name, last_name, a.title, c.title
FROM blog.writer as w
join category_has_article as ca on w.id = ca.article_writer_id
 join article as a on a.id = ca.article_id
join category as c on c.id = ca.category_id
where c.title = 'math' and w.first_name = 'Tamas';

-- 4 tag names and number of times used in articles------------------------------------------------------------------
SELECT
  tag.id,
  tag.title as tag,
  COUNT(tag.id) AS Total
FROM
  tag
LEFT JOIN article_has_tag as a ON a.tag_id = tag.id
GROUP BY tag.id,tag.title;

-- 5 name of categories witch not used in any article------------------------------------------------
SELECT * FROM category
WHERE id NOT IN
    (SELECT category_id FROM category_has_article);

-- 6 names of writers that dont have any article in category y--------------------------------------------------------------------------

SELECT * FROM writer
WHERE id NOT IN
    (SELECT category.id FROM category where category.title = 'Art');





