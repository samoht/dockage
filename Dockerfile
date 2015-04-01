FROM avsm/docker-opam:ubuntu-trusty-4.02.1
MAINTAINER Thomas Gazagnaire <thomas@gazagnaire.org>
RUN opam update
RUN opam remote add dockage https://github.com/samoht/dockage.git
RUN opam install mir-console -v
CMD opam config exec -- mir-console
