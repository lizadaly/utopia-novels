
for dir in books/*
  do
    book="$(basename "$dir")"
    epubcheck "${dir}/${book}.epub" --quiet
  done

