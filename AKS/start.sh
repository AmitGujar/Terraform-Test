#!/bin/bash

remove_config() {
    if [ -f ~/.kube/config ]; then
        rm ~/.kube/config
    else
        echo "No config file found"
    fi
}
remove_config

get_values() {
    aks_cluster_name=$(terraform output -raw aks_cluster_name)
    resource_group_name=$(terraform output -raw resource_group_name)

    echo "Getting credentials....."
    sleep 3
    az aks get-credentials --resource-group $resource_group_name --name $aks_cluster_name
}
get_values

