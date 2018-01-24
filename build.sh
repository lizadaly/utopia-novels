#!/bin/bash

# Expects a local pandoc installation
pandoc=`which pandoc`

for dir in books/*
  do
    book="$(basename "$dir")"

    echo "Generating HTML files for $book as $dir/$book.html"
    pandoc  -o $dir/$book.html $dir/book.md  --css ../../shared/web.css \
      --template shared/pandoc-template.html --resource-path $dir:shared

    echo "Generating EPUB files for $book as $dir/$book.epub"
    pandoc -o $dir/$book.epub $dir/book.md --epub-embed-font=shared/fonts/* \
      --css shared/epub.css --epub-cover-image $dir/cover.png
  done
