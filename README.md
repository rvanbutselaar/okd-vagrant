# localhost all in one
```
cd all-in-one
vagrant up
vagrant ssh
cd ~/openshift-ansible && ansible-playbook -i /vagrant/ansible/inventory playbooks/prerequisites.yml -b && ansible-playbook -i /vagrant/ansible/inventory playbooks/deploy_cluster.yml -b
```

# 1 master & 1 node
```
cd master-node
vagrant up
vagrant port
```

# Watch status during installation
```
sudo -i
watch -n2 "oc get no -o wide; docker ps; oc get po --all-namespaces"
```
