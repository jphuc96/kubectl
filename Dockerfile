FROM alpine:3.10

RUN apk add curl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.3/bin/linux/amd64/kubectl -o ./kubectl
RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin
CMD [ "kubectl" ]
