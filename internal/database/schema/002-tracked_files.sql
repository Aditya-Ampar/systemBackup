CREATE TABLE tracked_files (
  id INTEGER PRIMARY KEY,
  directory_id INTEGER NOT NULL,
  local_path TEXT NOT NULL UNIQUE,

  size INTEGER NOT NULL,
  modified_at INTEGER NOT NULL,
  content_hash TEXT,

  drive_file_id TEXT,
  last_backup_at DATETIME,
  status TEXT NOT NULL DEFAULT 'PENDING',

  FOREIGN KEY(directory_id) REFERENCES tracked_directories(id)
)
