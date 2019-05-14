FROM rust:latest AS build
COPY . . 
RUN cargo build --release

FROM scratch as final
EXPOSE 8080
COPY --from=build ./target/release/vindskydd_api /
CMD ["./vindskydd_api"]



# # Base image used, in this case official minimal image
# FROM scratch

# # Copy latest built material from host
# ADD target/x86_64-unknown-linux-musl/release/vindskydd_api /

# # Run the application
# CMD ["./vindskydd_api"]