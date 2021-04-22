echo "[A]dd Kubernetes context"

function kcla() { 
    KUBECONFIG0=$HOME/.kube/config
    
    echo "Adding context $@ to $KUBECONFIG0"
    rm -f $KUBECONFIG0.bak
    cp $KUBECONFIG0 $KUBECONFIG0.bak
    KUBECONFIG="$KUBECONFIG0:$@" kubectl config view --merge --flatten > $KUBECONFIG0.new
    rm -f $KUBECONFIG0
    mv $KUBECONFIG0.new $KUBECONFIG0

    kcl

    unset KUBECONFIG0
}
