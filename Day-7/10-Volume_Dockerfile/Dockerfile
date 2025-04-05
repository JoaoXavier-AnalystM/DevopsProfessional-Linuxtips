FROM golang:1.21 as buildando

WORKDIR /app
COPY . .
SHELL [ "/bin/bash" ]
RUN go mod init hello
RUN go build -o /app/hello


FROM alpine:3.15.9
COPY --from=buildando /app/hello /app/hello

ENV APP="hello_world"
ENV VERSION="3.0.0"
ARG GIROPOPS="strigus"

VOLUME ["/app/dados", "/app/dados2"]

RUN echo "O giropops é: ${GIROPOPS} version ${VERSION}"
CMD ["/app/hello"]