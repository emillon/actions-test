FROM nathanreb/ocamlformat:0.10
LABEL com.github.actions.name="Ocamlformat"
LABEL com.github.actions.description="Checks formatting"
LABEL com.github.actions.icon="sunrise"
USER root
ENTRYPOINT find $GITHUB_WORKSPACE
