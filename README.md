The image usage is to use both kubectl and helm in one place.

using kubectl or helm example : 
1- docker run --rm --name docker-helm-kubectl -v ~/.kube:/root/.kube docker-helm-kubectl-alpine:latest kubectl get pods 

2- docker run --rm --name docker-helm-kubectl -v ~/.kube:/root/.kube docker-helm-kubectl-alpine:latest helm list

NOTE: it has to mount inside the contianer as /root/.kube as shown above .

