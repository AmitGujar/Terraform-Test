Write-Output "Deployment is started....!!!"

Start-Sleep -Seconds 5

kubectl apply -f deployment.yaml

Write-Output "Getting more information about the deployment"

kubectl describe deployment demopods-deployment

Write-Output "Listing the number of pods created by deployment"

kubectl get pods -o wide

Write-Output "Exposing the deployment using nodeport...!!!"

Start-Sleep -Seconds 3

kubectl expose deployment demopods-deployment --type=NodePort --name=expose-service

Write-Output "Listing the service"

kubectl get svc