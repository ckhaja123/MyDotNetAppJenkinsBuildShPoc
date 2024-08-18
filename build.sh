#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Print each command before executing it
set -x

# Clean any previous builds
echo "Cleaning previous builds..."
dotnet clean

# Restore the project dependencies
echo "Restoring dependencies..."
dotnet restore

# Build the project
echo "Building the project..."
dotnet build --configuration Release

# Run tests (if you have any test projects)
echo "Running tests..."
dotnet test

# Publish the project (optional)
echo "Publishing the project..."
dotnet publish --configuration Release --output ./publish

echo "Build script completed successfully."
