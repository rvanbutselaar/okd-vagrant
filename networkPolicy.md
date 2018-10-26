Network Policy is now fully supported in OpenShift Container Platform 3.7.

```
os_sdn_network_plugin_name="redhat/openshift-ovs-networkpolicy"

oc new-project frontend
oc new-project database
oc new-project backend

oc new-app mongodb -e MONGODB_ADMIN_PASSWORD=Passw0rd  -n database -l app=mongodb

oc run -i -t frontend --image=busybox --restart=Never -n frontend --rm -l app=frontend
oc run -i -t backend --image=busybox --restart=Never -n backend --rm -l app=backend

nc -v database.mongodb 27017

```

```
cat <<EOF | oc create -n database -f -
kind: NetworkPolicy
apiVersion: extensions/v1beta1
metadata:
  name: allow-27017
spec:
 podSelector:
   matchLabels:
     app: mongodb
 ingress:
 - from:
   - podSelector:
       matchLabels:
         app: backend
   ports:
   - protocol: TCP
     port: 27017
EOF
```
