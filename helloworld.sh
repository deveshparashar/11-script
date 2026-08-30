#! /bin/bash

# Extract repo name and short commit ID
REPO_NAME="${GITHUB_REPOSITORY:-"local/repo"}"
COMMIT_ID="${GITHUB_SHA:0:7}" # Short 7-character commit SHA

echo "Hello World"
echo "This script is running from GitHub repo: ${REPO_NAME}"
echo "Current commit ID: ${COMMIT_ID}"
