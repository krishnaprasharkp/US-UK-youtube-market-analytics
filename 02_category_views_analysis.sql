-- ============================================================
-- Category Performance Analysis — Views
-- Maps numeric category_id to readable category names and
-- calculates average views + like rate per category
-- ============================================================

SELECT
  CASE CAST(category_id AS INT64)
    WHEN 1 THEN 'Film & Animation'
    WHEN 2 THEN 'Autos & Vehicles'
    WHEN 10 THEN 'Music'
    WHEN 15 THEN 'Pets & Animals'
    WHEN 17 THEN 'Sports'
    WHEN 19 THEN 'Travel & Events'
    WHEN 20 THEN 'Gaming'
    WHEN 22 THEN 'People & Blogs'
    WHEN 23 THEN 'Comedy'
    WHEN 24 THEN 'Entertainment'
    WHEN 25 THEN 'News & Politics'
    WHEN 26 THEN 'Howto & Style'
    WHEN 27 THEN 'Education'
    WHEN 28 THEN 'Science & Technology'
    WHEN 29 THEN 'Nonprofits & Activism'
    WHEN 30 THEN 'Movies'
    ELSE 'Other'
  END AS category_name,
  COUNT(*) as video_count,
  ROUND(AVG(CAST(views AS INT64))) as avg_views,
  ROUND(AVG(CAST(likes AS INT64) / NULLIF(CAST(views AS INT64), 0)) * 100, 2) as avg_like_rate_pct
FROM `youtube_trending.us_videos`
GROUP BY category_name
ORDER BY avg_views DESC;

-- Run the same query against `youtube_trending.gb_videos`
-- for the UK comparison.
