# :mortar_board: project-ml-microservice-kubernetes 
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/fuongcao/project-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/fuongcao/project-ml-microservice-kubernetes/tree/main)
### :one: Complete the Dockerfile
- Completed [Dockerfile](Dockerfile)
- Pass lint checks
>![make-lint](images/make-lint.png)

## :two: Run a Container & Make a Prediction
- Run container [./run_docker.sh](run_docker.sh)
>![run-container](images/run-docker.png)

- Run Make a Prediction [./make_prediction.sh](make_prediction.sh)
>![make-prediction](images/make-prediction.png)

## :three: Improve Logging & Save Output
- Improve Logging. Add below code to app.py to log 'output prediction' as INFO
```
LOG.info(f"output prediction: {prediction}")
```
- Save Output. Find in [docker_out.txt](output_txt_files/docker_out.txt)

## :four: Upload the Docker Image :rocket: 
- To upload Docker image run [./upload_docker.sh](upload_docker.sh)
>![upload-docker](images/upload-docker.png)
- Docker Repository
>![docker-repository](images/docker-repository.png)


## :five: Configure Kubernetes to Run Locally
```
minikube start
```
>![minikube-start](images/minikube-start.png)

```
kubectl config view
```
>![kubectl-config-view](images/kubectl-config-view.png)

## :six: Deploy with Kubernetes and Save Output Logs
- Deploy with Kubernetes run [./run_kubernetes.sh](run_kubernetes.sh)
>![run-kubernetes](images/run-kubernetes.png)
- kubernetes output file [kubernetes_out.txt](output_txt_files/kubernetes_out.txt)
>![kubernetes-output](images/kubernetes-output.png)

## :seven: [Important] Delete Cluster
```
minikube delete
```
>![minikube-delete](images/minikube-delete.png)


## :eight: CircleCI Integration
- CircleCi build pass:
>![circleci](images/circleci.png)

