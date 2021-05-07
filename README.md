## Usage
Deploy the app:
```
kubectl apply -f  https://raw.githubusercontent.com/isimluk/vulnapp/master/vulnerable.example.yaml
```

Get web address:
```
watch -n 1 echo 'http://$(kubectl get service vulnerable-example-com  -o yaml -o=jsonpath="{.status.loadBalancer.ingress[0].ip}")/'
```
If the ip field is not present try:
```
watch -n 1 echo 'http://$(kubectl get service vulnerable-example-com  -o yaml -o=jsonpath="{.status.loadBalancer.ingress[0].hostname}")/'
```
Tear down the app:
```
kubectl delete -f  https://raw.githubusercontent.com/isimluk/vulnapp/master/vulnerable.example.yaml
```

## Appendix A
The latest docker build: [![Docker Repository on Quay](https://quay.io/repository/slukasik/vulnapp/status "Docker Repository on Quay")](https://quay.io/repository/slukasik/vulnapp)
