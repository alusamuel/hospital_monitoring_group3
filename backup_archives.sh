#!/usr/bin/env bash

group_number="3"  

archive_dir="archived_logs_group${group_number}"

remote_host="e5e9cbc5f51a.a5efec7a.alu-cod.online"
remote_user="e5e9cbc5f51a"
remote_dir="/home/"         

if [ ! -d "$archive_dir" ]; then
    mkdir "$archive_dir"
    echo "Created directory: $archive_dir"
fi

mv heart_rate_log.txt_* "$archive_dir"

if [ $? -eq 0 ]; then
    echo "Archived log files moved to $archive_dir"
else
    echo "No archived log files found to move."
    exit 1
fi

scp -r "$archive_dir" "$remote_user@$remote_host:$remote_dir"

if [ $? -eq 0 ]; then
    echo "Backup to remote server $remote_host was successful."
else
    echo "Backup failed. Please check your SSH connection details."
    exit 1
fi

