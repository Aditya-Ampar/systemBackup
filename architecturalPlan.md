# DATABASE

## TABLES

### 1. Tracked Directories
- id
- path
- enabled
- created_at

### 2. Tracked Files
- id
- directory_id (foreign key -> Tracked Directories id)
- local_path
- size
- modified_at
- content_hash
- drive_file_id
- last_backup_at
- status

### 3. Backup Jobs
- id
- file_id (foreign key -> Tracked Files id)
- operation
- status
- retry_count
- next_retry_at
- created_at

### 4. Backup History
- id
- trigger_type
- started_at
- completed_at
- files_processed
- files_failed
- status

# CONFIG LOADER

## Loader



# DIRECTORY MONITOR

## STRUCTS

- 
