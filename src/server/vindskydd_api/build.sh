#!/bin/bash

# Run ekidd/rust-musl-builder docker imgage and build the solution into a docker compatible binary
# run 
# --rm [Automatically remove the container when it exits] 
# -it [Keep STDIN open even if not attached + Allocate a pseudo-TTY] 
# -v "$(pwd)":/home/rust/src [Bind mount a volume at local path /home/rust/src
docker run --rm -it -v "$(pwd)":/home/rust/src ekidd/rust-musl-builder cargo build --release 
# Build the final image from the result
docker build --rm -f "Dockerfile" -t vindskydd_api:latest .