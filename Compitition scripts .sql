
Wissen Online Exam
/*Question: Given one Table MovieRatings with two columns  movieid and rating
-------------------
|movie id | Rating |
-------------------|
	5	 |  10	   |
	11	 |   8     |
	5 	 |   5     |
	8	 |   7     |
	9	 |	 2     |
------------------

Write SQL query to list the top ten movies(movieId and average rating rounded to 1 decimal place). If there is more than one movie with the same average rating. then
output the one with the lower movieId first
 */
 
 Solution below:
 
select movieid, CAST(AVG(rating) AS DECIMAL(10,1)) AS AverageRating from MovieRatings group by movieid order by AverageRating desc, movieid asc limit 10