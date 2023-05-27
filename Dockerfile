FROM golang:latest as build-env

WORKDIR /app

# copy orchestrator to image
COPY orchestrator .

# compile code
RUN go build --ldflags '-extldflags "-Wl,--allow-multiple-definition"' -o ./build/orchestrator main.go

# move binary to thin image
FROM gcr.io/distroless/base

COPY --from=build-env /app/build/orchestrator .

CMD ["/orchestrator"]

EXPOSE 55055/tcp