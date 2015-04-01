FROM avsm/docker-opam:ubuntu-trusty-4.02.1
MAINTAINER Thomas Gazagnaire <thomas@gazagnaire.org>
RUN sudo -u opam sh -c "opam update"
RUN sudo -u opam sh -c "opam remote add dockage https://github.com/samoht/dockage.git"
RUN sudo -u opam sh -c "opam install mir-console"
CMD sudo -u opam sh -c "mir-console"
