#!/bin/bash

echo "🚀 Creating Developer Starter Kit structure..."

mkdir -p frontend/{nextjs-template,react-template}

mkdir -p backend/{fastapi-template,springboot-template}

mkdir -p devops/{docker,github-actions,terraform}

mkdir -p docs/{architecture,adr,templates}

mkdir -p examples

echo "✅ Structure created successfully!"