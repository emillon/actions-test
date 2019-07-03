#!/bin/sh
set -ex
echo Hello from entrypoint
env
find ~opam/.opam/ -name dune -executable
