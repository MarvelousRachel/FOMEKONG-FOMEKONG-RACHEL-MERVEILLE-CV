#!/bin/bash

echo "🚀 Deploying Portfolio Updates"
echo "============================="

# Copy updated files to docs directory
echo "📦 Copying updated files to docs..."
cp skills.html docs/
cp projects.html docs/

# Git operations
echo "🔄 Adding files to git..."
git add docs/skills.html
git add docs/projects.html
git add skills.html
git add projects.html

# Commit and push
echo "💾 Committing changes..."
git commit -m "Update portfolio with enhanced skills and project details"

echo "📤 Pushing changes to GitHub..."
git push

echo "✅ Deployment completed!"
echo "🌐 Your updated portfolio should be live shortly at: https://marvelousrachel.github.io/FOMEKONG-FOMEKONG-RACHEL-MERVEILLE-CV/"
