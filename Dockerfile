FROM alpine:latest
RUN apk add --no-cache ca-certificates git bash openssh openssl wget curl \
    && wget "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" \
    && mv kubectl /usr/local/bin/ \
    && chmod +x /usr/local/bin/kubectl \
    && curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 \
    && sh /get_helm.sh \
    && chmod +x /usr/local/bin/helm \
    && apk del wget curl

CMD ["bash"]
