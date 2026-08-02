
SELECT COUNT(*) as row_count FROM `youtube_trending.us_videos`;
SELECT COUNT(*) as row_count FROM `youtube_trending.gb_videos`;


SELECT video_id, COUNT(*) as occurrences
FROM `youtube_trending.us_videos`
GROUP BY video_id
HAVING COUNT(*) > 1
ORDER BY occurrences DESC
LIMIT 10;

SELECT
  COUNTIF(views IS NULL) as null_views,
  COUNTIF(category_id IS NULL) as null_category,
  COUNTIF(likes IS NULL) as null_likes,
  COUNTIF(dislikes IS NULL) as null_dislikes
FROM `youtube_trending.us_videos`;
