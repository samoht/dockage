FROM avsm/docker-opam:ubuntu-trusty-4.02.1
MAINTAINER Thomas Gazagnaire <thomas@gazagnaire.org>
ADD .opam-config-exec /usr/bin/opam-config-exec
RUN sudo chmod 755 /usr/bin/opam-config-exec
WORKDIR /home/opam
ADD packages/ dockage/packages/
RUN sudo chown -R opam dockage
RUN opam remote add dockage dockage
RUN opam update
RUN /bin/bash -c "opam install `ls dockage/packages | tr '\n' ' '`"
ENTRYPOINT ["/usr/bin/opam-config-exec"]
CMD ["bash"]