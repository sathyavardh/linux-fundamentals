#!/bin/bash

find backups -type f -mtime +7 -delete
echo "Old backups (older than 7 days) deleted successfully"

