# --- !Ups
-- Update task review history table with any review_started_at data from task_review
UPDATE task_review_history th SET review_started_at = tr.review_started_at
FROM task_review tr
WHERE th.task_id = tr.task_id AND th.reviewed_at = tr.reviewed_at
