# localhost all in one
```
cd all-in-one
vagrant up
vagrant ssh
cd ~/openshift-ansible && ansible-playbook -i /vagrant/ansible/inventory playbooks/prerequisites.yml -b && ansible-playbook -i /vagrant/ansible/inventory playbooks/deploy_cluster.yml -b
```

# 1 master & 1 node
```
pip install ansible==2.4.3.0
make clean && make clone && make masternode
```

# Watch status during installation inside okd-master1
```
sudo -i
watch -n2 "oc get no -o wide; docker ps; oc get po --all-namespaces"
```

# Open web console

Go to: https://okd-master1:8443/console/catalog and login as admin:admin
