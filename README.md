Deploy the app:
```
kubectl apply -f  https://raw.githubusercontent.com/isimluk/vulnapp/master/vulnerable.example.yaml
```

Get web address:
```
watch echo "http://$(kubectl get service vulnerable-example-com  -o yaml -o=jsonpath='{.status.loadBalancer.ingress[0].ip}')/"
```

Tear down the app:
```
kubectl delete -f  https://raw.githubusercontent.com/isimluk/vulnapp/master/vulnerable.example.yaml
```
