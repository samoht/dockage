FROM avsm/docker-opam:ubuntu-trusty-4.02.1
MAINTAINER Thomas Gazagnaire <thomas@gazagnaire.org>
RUN opam update
RUN git clone https://github.com/samoht/dockage.git
RUN opam remote add dockage dockage
ADD .opam-config-exec /usr/bin/opam-config-exec
RUN sudo chmod 755 /usr/bin/opam-config-exec
ADD INDEX INDEX
RUN /bin/bash -c "opam install `cat INDEX | tr '\n' ' '`"
ENTRYPOINT ["/usr/bin/opam-config-exec"]
CMD ["bash"]