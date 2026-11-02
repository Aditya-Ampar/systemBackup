CREATE TABLE backup_jobs (
  id INTEGER PRIMARY KEY,
  file_id INTEGER NOT NULL,
  operation TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'PENDING',
  retry_count INTEGER NOT NULL DEFAULT 0,
  next_retry_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

  FOREIGN KEY(file_id) REFERENCES tracked_files(id)
)
