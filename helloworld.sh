#!/bin/bash

# 1. Get Commit ID (GitHub Actions -> Jenkins -> Local Git)
FULL_SHA="${GITHUB_SHA:-${GIT_COMMIT:-$(git rev-parse HEAD 2>/dev/null)}}"
COMMIT_ID="${FULL_SHA:0:7}"

# 2. Get Repository Name
if [ -n "$GITHUB_REPOSITORY" ]; then
    REPO_NAME="${GITHUB_REPOSITORY}"
elif [ -n "$GIT_URL" ]; then
    REPO_NAME=$(basename -s .git "$GIT_URL")
else
    REPO_NAME=$(basename -s .git "$(git config --get remote.origin.url 2>/dev/null)")
fi

echo "Hello World"
echo "This script is running from GitHub repo: ${REPO_NAME:-"unknown/repo"}"
echo "Current commit ID: ${COMMIT_ID:-"unknown"}"
