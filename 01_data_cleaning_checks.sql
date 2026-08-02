-- ============================================================
-- Data Cleaning & Validation Checks
-- Run before analysis to confirm data quality
-- ============================================================

-- Check row counts after ingestion
SELECT COUNT(*) as row_count FROM `youtube_trending.us_videos`;
SELECT COUNT(*) as row_count FROM `youtube_trending.gb_videos`;

-- Check for duplicate video entries
-- (Expected: a video can appear multiple times if it trended on
-- multiple dates, so repeats here are normal, not an error)
SELECT video_id, COUNT(*) as occurrences
FROM `youtube_trending.us_videos`
GROUP BY video_id
HAVING COUNT(*) > 1
ORDER BY occurrences DESC
LIMIT 10;

-- Check for nulls in key columns
SELECT
  COUNTIF(views IS NULL) as null_views,
  COUNTIF(category_id IS NULL) as null_category,
  COUNTIF(likes IS NULL) as null_likes,
  COUNTIF(dislikes IS NULL) as null_dislikes
FROM `youtube_trending.us_videos`;
