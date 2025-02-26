#+TITLE: Gator

This is just a simple Go application that creates a RSS feed aggregator aka ~Gator~.

This program was created while following along with the course on [[https://www.boot.dev/u/maker2413][Boot.dev]].

To properly run Gator you will need a postgres database. I personally recommend
just using a docker image, in which case you can run the following:
#+begin_src shell
  make startpostgres
#+end_src

I also use [[https://github.com/pressly/goose][goose]] to apply the sql files to the postgres database, which you can
apply with the following:
#+begin_src shell
  make gooseup
#+end_src

To run Gator you will need to do the following:
#+begin_src shell
  go run . login <user>

  go run .
#+end_src
