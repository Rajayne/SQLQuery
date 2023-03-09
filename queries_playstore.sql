-- 1. Find the app with an ID of 1880.
1. SELECT id, app_name FROM analytics WHERE id = 1880;

-- Find the ID and app name for all apps that were last updated on August 01, 2018.
2. SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

-- Count the number of apps in each category, e.g. “Family | 1972”.
3. SELECT category, COUNT(app_name) FROM analytics GROUP BY category;

-- Find the top 5 most-reviewed apps and the number of reviews for each.
4. SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;

-- Find the app that has the most reviews with a rating greater than equal to 4.8.
5. SELECT app_name, rating, reviews FROM analytics WHERE rating >= 4.8 ORDER BY reviews
 desc LIMIT 1;

-- Find the average rating for each category ordered by the highest rated to lowest rated.
6. SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) d
esc;

-- Find the name, price, and rating of the most expensive app with a rating that’s less than 3.
7. SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc L
IMIT 1;

-- Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.
8. SELECT app_name, min_installs, rating FROM analytics WHERE min_installs < 50 AND rat
ing > 0 ORDER BY rating desc;

-- Find the names of all apps that are rated less than 3 with at least 10000 reviews.
9. SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews >= 1000
0;

-- Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.
10. SELECT app_name, reviews, price FROM analytics WHERE price BETWEEN .10 AND 1.00 ORDE
R BY reviews desc LIMIT 10;

-- Find the most out of date app.
11. SELECT app_name, last_updated FROM analytics ORDER BY last_updated asc LIMIT 1;

-- Find the most expensive app.
12. SELECT app_name, price FROM analytics ORDER BY price desc LIMIT 1;

-- Count all the reviews in the Google Play Store.
13. SELECT SUM(reviews) FROM analytics;

-- Find all the categories that have more than 300 apps in them.
14. SELECT category, COUNT(category) AS app_count FROM analytics GROUP BY category HAVIN
G COUNT(category) > 300;

-- Find the app that has the highest proportion of min_installs to reviews, among apps that have been installed at least 100,000 times. 
15. SELECT app_name, min_installs, reviews, min_installs/reviews AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY min_installs/reviews desc LIMIT 5;

Further Study
*************
-- Find the name and rating of the top rated apps in each category, among apps that have been installed at least 50,000 times.
FS1. SELECT app_name, rating, category FROM analytics
  WHERE (rating, category) in (
    SELECT MAX(rating), category FROM analytics
      WHERE min_installs >= 50000
      GROUP BY category
    )
  ORDER BY category;