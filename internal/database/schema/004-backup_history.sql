CREATE TABLE backup_history(
  id INTEGER PRIMARY KEY,
  trigger_type TEXT NOT NULL,
  started_at DATETIME,
  completed_at DATETIME,
  files_processed INTEGER DEFAULT 0,
  files_failed INTEGER DEFAULT 0,
  status TEXT NOT NULL
)
