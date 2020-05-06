FROM alpine:latest
ENV KUBERNETES_MASTER /root/.kube/config
RUN apk add --no-cache ca-certificates bash git openssh openssl wget curl \
    && wget "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" \
    && mv kubectl /usr/local/bin/ \
    && chmod +x /usr/local/bin/kubectl \
    && curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 \
    && bash /get_helm.sh \
    && chmod +x /usr/local/bin/helm \
    && chown root:root /usr/local/bin/kubectl /usr/local/bin/helm \
    && apk del git wget curl

CMD bash
