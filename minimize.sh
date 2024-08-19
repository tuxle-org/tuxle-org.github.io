#!/usr/bin/env bash
for file in ../gh-pages/*.html; do
  html-minifier-terser --collapse-whitespace --remove-comments --remove-optional-tags --minify-css true --minify-js true -o "$file" "$file"
done

