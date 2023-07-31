for i in {1..20}
do
        echo "restart dex server for user $i "
        oc rollout restart deployment user$i-argocd-dex-server -n user$i-argocd
        echo "restart argo server for user $i "
        oc rollout restart deployment user$i-argocd-server -n user$i-argocd
done