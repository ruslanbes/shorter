echo "[D]elete Kubernetes context, cluster and user"

function kcld() {
    kubectl config delete-context $@
    kubectl config delete-cluster $@
    kubectl config delete-user $@
}

