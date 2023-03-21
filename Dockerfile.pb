FROM alpine:latest

ARG PB_VERSION=0.13.4

RUN apk add --no-cache unzip ca-certificates

# download and unzip PocketBase
ADD https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_amd64.zip /tmp/pb.zip
RUN unzip /tmp/pb.zip -d /pb/

EXPOSE 8080

# start PocketBase
CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8080"]

## Custom PocketBase build
#FROM golang:1.18-alpine AS build
#RUN apk add --no-cache ca-certificates
#
#WORKDIR /app
#
#COPY pocketbase/go.mod ./
#COPY pocketbase/go.sum ./
#RUN go mod download
#
#COPY pocketbase/*.go ./
#
#RUN CGO_ENABLED=0 go build -o /pb
#
### Deploy
#FROM alpine:latest
#
#COPY --from=build /pb /pb/pocketbase
#
#EXPOSE 8080
#
## start PocketBase
#CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8080", "--debug"]