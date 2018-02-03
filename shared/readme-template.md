# $title$
## By $author$
### Published ($date$)

$if(description)$
  $description$
$endif$

Read [$title$](https://lizadaly.github.io/utopia-novels/books/$book$/$book$.html) in a web browser.

Download an [EPUB ebook version](https://lizadaly.github.io/utopia-novels/books/$book$/$book$.epub).

$if(cover-image)$
  ## Book cover
  <img src="https://lizadaly.github.io/utopia-novels/books/$book$/cover.png" width="400">
  $if(cover-credit)$
  Book cover by $cover-credit$.
  $endif$

  $if(cover-source)$
  $cover-source$
  $endif$

$endif$
