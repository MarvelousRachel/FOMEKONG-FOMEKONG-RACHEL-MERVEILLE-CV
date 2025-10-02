#!/bin/bash

# Clean dist directory
rm -rf dist

# Build the app
npm run build

# Copy 404 and test pages
cp public/404.html dist/
cp public/test.html dist/

# Deploy to gh-pages
npx gh-pages -d dist
