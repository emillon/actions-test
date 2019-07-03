FROM ocaml/opam2
LABEL com.github.actions.name="Ocamlformat"
LABEL com.github.actions.description="Checks formatting"
LABEL com.github.actions.icon="sunrise"
RUN sudo apt-get -y install m4
RUN cd /home/opam/opam-repository && git pull
RUN opam update
RUN opam install dune ocamlformat
USER root
ENV PATH="/home/opam/.opam/4.08/bin:${PATH}"
ENTRYPOINT [ "sh", "-c", "dune build @fmt" ]
