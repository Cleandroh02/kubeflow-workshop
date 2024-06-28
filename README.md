# kubeflow-workshop
Repository dedicated to the code that will be used in the Pycon 2024 Colombia for the workshop "MLOps with Kubeflow, A Hands-on guide".

## Minikube

### What is Minikube?

Minikube is a tool that makes it easy to run Kubernetes locally. It runs a single-node Kubernetes cluster inside a virtual machine on your personal computer. This is especially useful for developing and testing Kubernetes applications.

### Install Minikube

Follow the instructions from [Minikube's official documentation](https://minikube.sigs.k8s.io/docs/start/?arch=%2Flinux%2Fx86-64%2Fstable%2Fbinary+download).

### Linux installation from binary

1. **Download Minikube binary**:
    ```bash
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    ```
    This command downloads the latest Minikube binary for Linux.

2. **Install Minikube and remove the downloaded file**:
    ```bash
    sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64
    ```
    This command installs Minikube to `/usr/local/bin` so it can be run from anywhere, and then removes the downloaded binary file to clean up.

### Useful commands with Minikube

1. **Create an alias for `kubectl` to use Minikube's `kubectl`**:
    ```bash
    alias kubectl="minikube kubectl --"
    ```
    This command creates an alias so you can use `kubectl` commands through Minikube.

### Optionally, Save the Alias

1. **Open the `.bashrc` file**:
    ```bash
    nano ~/.bashrc
    ```
    This command opens the `.bashrc` file in the nano text editor.

2. **Add the following line at the end of the file**:
    ```bash
    alias kubectl="minikube kubectl --"
    ```
    This line adds the alias for `kubectl` to the `.bashrc` file, so it will be available in all future terminal sessions.

3. **Source the `.bashrc` file to apply changes**:
    ```bash
    source ~/.bashrc
    ```
    This command reloads the `.bashrc` file to apply the changes made.


4. **Start Minikube with specified resources**:

    ```bash
    minikube start --memory=4096 --cpus=4
    ```
    
    This command starts a Minikube cluster with 4GB of memory and 4 CPUs allocated.


## Kustomize

### What is Kustomize?
Kustomize is a configuration management tool for Kubernetes that allows you to customize Kubernetes resource definitions. It is often used to manage different environments (development, staging, production) without having to duplicate YAML files.

### Install Kustomize

Follow the instructions to install Kustomize from [Kustomize's official documentation](https://kubectl.docs.kubernetes.io/installation/kustomize/).

### Install with Snap on Ubuntu

1. **Install Kustomize**:
    ```bash
    sudo snap install kustomize
    ```
    This command installs Kustomize using Snap, a package manager for Linux.

## Kubeflow Pipelines



1. **Clone the Kubeflow Pipelines repository**:
    ```bash
    git clone https://github.com/kubeflow/pipelines.git
    ```
    This command clones the Kubeflow Pipelines repository from GitHub to your local machine.

2. **Change the permissions of the execution script**:
    ```bash
    chmod +x ./execute_kubeflow.sh
    ```
    This command makes the `execute_kubeflow.sh` script executable.

3. **Execute the script to Install Kubeflow**:
    ```bash
    ./execute_kubeflow.sh
    ```
    This command runs the `execute_kubeflow.sh` script, which will install and start Kubeflow Pipelines.

4. **Run Kubeflow Pipelines**
   ```bash
   kubectl port-forward -n kubeflow svc/ml-pipeline-ui 8080:80
   ```





