#!/bin/bash
# Generate Mermaid diagrams from Markdown files
for file in *.md; do
  mmdc -i "$file" -o "${file%.md}.png"
done
