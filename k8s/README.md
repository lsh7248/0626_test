<!-- Name:                     nginx2
Namespace:                default
Labels:                   run=nginx2
Annotations:              <none>
Selector:                 run=nginx2
Type:                     NodePort
IP:                       10.98.37.203
LoadBalancer Ingress:     localhost
Port:                     <unset>  80/TCP
TargetPort:               80/TCP
NodePort:                 <unset>  30918/TCP
Endpoints:                10.1.0.109:80,10.1.0.110:80,10.1.0.111:80 + 17 more...
Session Affinity:         None
External Traffic Policy:  Cluster
Events:                   <none> -->

Deploy expose방법: kubectl expose deployment/nginx2 --type="NodePort" --port 80