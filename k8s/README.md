<!-- Cluster IP: 10.98.37.203
PORT : 80 -->

<!-- kubectl expose deployment/nginx2 --type="NodePort" --port 80
kubectl.exe scale deployment nginx2 --replicas=20 -->

kubectl.exe run nginx2 --image=leesh7248/ubuntu_nginx --port=80