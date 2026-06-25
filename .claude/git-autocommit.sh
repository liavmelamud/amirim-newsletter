#!/usr/bin/env bash
# Auto-commit and push changes after a task completes.
set -e
cd "$(git rev-parse --show-toplevel)"
if [ -z "$(git status --porcelain)" ]; then
  exit 0
fi
git add -A
git commit -m "Auto-commit: task completed $(date '+%Y-%m-%d %H:%M:%S')"
git push origin "$(git branch --show-current)"
