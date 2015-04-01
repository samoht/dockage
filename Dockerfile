FROM FROM avsm/docker-opam-build:ubuntu-14.04
MAINTAINER Thomas Gazagnaire <thomas@gazagnaire.org>
ONBUILD RUN sudo -u opam sh -c "opam update"
RUN sudo -u opam sh -c "opam remote add dockage ."
RUN sudo -u opam sh -c "opam install mir-hello-world"
