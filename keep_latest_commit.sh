#!/bin/bash

# Create a new orphan branch (no previous history)
git checkout --orphan latest_branch
# Add all files to staging
git add -A
# Commit staged files with a message
git commit -m "Keep only the latest commit"
# Delete the current main branch
git branch -D main
# Rename the latest branch to main
git branch -m main
# Force push the new main branch to origin, overwriting old history
git push -f origin main