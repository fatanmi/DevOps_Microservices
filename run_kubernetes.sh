
#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=haryorbami/myflaskapp
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run myflaskapp --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods

kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward myflaskapp 8000:80

#kubectl expose pod myflaskappnew --port=80  --target-port=8000

# To get logs
kubectl logs `kubectl get pods -o=name`


