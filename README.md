# project-ml-microservice-kubernetes
## Task 1: Complete the Dockerfile

### - Docker File
>![docker-file](images/dockerfile.png)

### - Pass lint checks
>![make-lint](images/make-lint.png)

## Task 2: Run a Container & Make a Prediction
### - Run container
- [run_docker.sh](run_docker.sh)
>![run-container](images/run-docker.png)

### - Make a Prediction
- [upload_docker.sh](output_txt_files/docker_out.txt)
>![make-prediction](images/make-prediction.png)

## Task 3: Improve Logging & Save Output
### - Improve Logging
 Add below to app.py
```
LOG.info(f"output prediction: {prediction}")
```
### - Save Output
- Find in [docker_out.txt](output_txt_files/docker_out.txt)

## Task 4: Upload the Docker Image
[upload_docker.sh](upload_docker.sh)

>![make-prediction](images/upload-docker.png)

## Task 5: Configure Kubernetes to Run Locally
```
minikube start
```
>![minikube-start](images/minikube-start.png)

```
kubectl config view
```
>![kubectl-config-view](images/kubectl-config-view.png)

## Task 6: Deploy with Kubernetes and Save Output Logs
### Deploy with Kubernetes
[run_kubernetes.sh](run_kubernetes.sh)
>![run-kubernetes](images/run-kubernetes.png)

## Task 7: [Important] Delete Cluster
```
minikube delete
```
>![minikube-delete](images/minikube-delete.png)


## Task 8: CircleCI Integration
