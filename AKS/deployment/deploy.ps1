Write-Output "Deployment is started....!!!"

Start-Sleep -Seconds 3

kubectl apply -f deployment.yaml

Write-Output "Getting more information about the deployment"

kubectl describe deployment demopods-deployment

Write-Output "Listing the number of pods created by deployment"

kubectl get pods -o wide

Write-Output "Exposing the deployment...!!!"

Start-Sleep -Seconds 7

kubectl expose deployment demopods-deployment --type=LoadBalancer --port=80 --name=expose-service

Write-Output "Listing the service"

kubectl get svc