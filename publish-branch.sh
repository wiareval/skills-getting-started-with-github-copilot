#!/bin/bash

# Script to publish the accelerate-with-copilot branch to the remote repository
# This script requires Git authentication credentials

echo "Publishing accelerate-with-copilot branch to remote..."

# Check if the branch exists locally
if git show-ref --verify --quiet refs/heads/accelerate-with-copilot; then
    echo "✓ Branch 'accelerate-with-copilot' exists locally"
    
    # Attempt to push the branch
    if git push -u origin accelerate-with-copilot; then
        echo "✓ Successfully published 'accelerate-with-copilot' to remote"
    else
        echo "✗ Failed to push branch. Please check your Git credentials and permissions."
        exit 1
    fi
else
    echo "✗ Branch 'accelerate-with-copilot' does not exist locally"
    echo "  Run: git checkout -b accelerate-with-copilot"
    exit 1
fi
