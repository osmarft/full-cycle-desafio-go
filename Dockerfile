FROM golang:1.16.15-alpine3.15 as builder

COPY /hello .

RUN GOPATH= go build -o /hello

FROM scratch

COPY --from=builder hello /

CMD [ "/hello" ]