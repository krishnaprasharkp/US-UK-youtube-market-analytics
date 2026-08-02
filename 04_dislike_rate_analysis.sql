

SELECT
  CASE CAST(category_id AS INT64)
    WHEN 10 THEN 'Music' WHEN 23 THEN 'Comedy' WHEN 24 THEN 'Entertainment'
    WHEN 25 THEN 'News & Politics' WHEN 22 THEN 'People & Blogs'
    WHEN 26 THEN 'Howto & Style' WHEN 28 THEN 'Science & Technology'
    WHEN 17 THEN 'Sports' WHEN 1 THEN 'Film & Animation'
    WHEN 20 THEN 'Gaming' WHEN 27 THEN 'Education' WHEN 15 THEN 'Pets & Animals'
    WHEN 2 THEN 'Autos & Vehicles' WHEN 19 THEN 'Travel & Events'
    WHEN 29 THEN 'Nonprofits & Activism' ELSE 'Other'
  END AS category_name,
  'US' as country,
  ROUND(
    AVG(CAST(dislikes AS INT64) / NULLIF(CAST(likes AS INT64) + CAST(dislikes AS INT64), 0)) * 100,
    2
  ) as dislike_pct
FROM `youtube_trending.us_videos`
GROUP BY category_name
ORDER BY dislike_pct DESC
LIMIT 5;



