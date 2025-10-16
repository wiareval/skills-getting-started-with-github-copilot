#!/bin/bash
set -e

# Script to publish the accelerate-with-copilot branch to the remote repository
# This script requires Git authentication credentials

BRANCH_NAME="accelerate-with-copilot"

echo "Publishing ${BRANCH_NAME} branch to remote..."

# Check if the branch exists locally
if git show-ref --verify --quiet refs/heads/${BRANCH_NAME}; then
    echo "✓ Branch '${BRANCH_NAME}' exists locally"
    
    # Attempt to push the branch
    if git push -u origin ${BRANCH_NAME}; then
        echo "✓ Successfully published '${BRANCH_NAME}' to remote"
    else
        echo "✗ Failed to push branch. Please check your Git credentials and permissions."
        exit 1
    fi
else
    echo "✗ Branch '${BRANCH_NAME}' does not exist locally"
    echo "  Run: git checkout -b ${BRANCH_NAME}"
    exit 1
fi
