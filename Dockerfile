FROM avsm/docker-opam:ubuntu-trusty-4.02.1
MAINTAINER Thomas Gazagnaire <thomas@gazagnaire.org>
RUN opam update
RUN git clone https://github.com/samoht/dockage.git
RUN opam remote add dockage dockage
RUN /bin/bash -c "opam install `ls dockage/packages/`"
ADD .opam-config-exec /usr/bin/opam-config-exec
RUN sudo chmod 755 /usr/bin/opam-config-exec
ENTRYPOINT ["/usr/bin/opam-config-exec"]
CMD ["bash"]