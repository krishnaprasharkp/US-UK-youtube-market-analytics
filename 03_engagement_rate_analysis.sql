
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
  ROUND(
    SUM(CAST(likes AS INT64)) / NULLIF(SUM(CAST(views AS INT64)), 0) * 100,
    2
  ) as like_rate_pct
FROM `youtube_trending.us_videos`
GROUP BY category_name
ORDER BY like_rate_pct DESC;

-- Note: this uses SUM(likes)/SUM(views) rather than AVG of individual
-- ratios. During dashboard validation, this distinction was found to
-- matter for small-sample categories -- see README for details.
