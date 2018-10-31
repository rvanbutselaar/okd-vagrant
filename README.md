# localhost all in one
```
pip install ansible==2.6.5
make clean && make clone && make allinone
```

# 1 master & 1 node
```
pip install ansible==2.6.5
make clean && make clone && make masternode
```

# Watch status during installation inside okd-master1
```
sudo -i
watch -n2 "oc get no -o wide; docker ps; oc get po --all-namespaces"
```

# Open web console

Go to: https://okd-master1:8443/console/catalog and login as admin:admin

# Upgrade info
```
ANSIBLE_HOST_KEY_CHECKING=false \
ANSIBLE_SSH_ARGS='-o UserKnownHostsFile=/dev/null -o IdentitiesOnly=yes -o IdentityFile=~/.vagrant.d/insecure_private_key -o ControlMaster=auto -o ControlPersist=60s' \
ansible-playbook --connection=ssh --timeout=30 -e "ansible_user=vagrant" -i ansible/inventory -v /tmp/openshift-ansible/playbooks/byo/openshift-cluster/upgrades/v3_11/upgrade.yml

watch "oc get no -o wide; echo ''; oc get po --all-namespaces"
```


ANSIBLE_HOST_KEY_CHECKING=false \
ANSIBLE_SSH_ARGS='-o UserKnownHostsFile=/dev/null -o IdentitiesOnly=yes -o IdentityFile=~/.vagrant.d/insecure_private_key -o ControlMaster=auto -o ControlPersist=60s' \
ansible-playbook --connection=ssh --timeout=30 -e "ansible_user=vagrant" -i ansible/inventory -v /tmp/openshift-ansible/playbooks/openshift-monitoring/config.yml

ANSIBLE_SSH_ARGS='-o UserKnownHostsFile=/dev/null -o IdentitiesOnly=yes -o IdentityFile=~/.vagrant.d/insecure_private_key -o ControlMaster=auto -o ControlPersist=60s' \
ansible-playbook --connection=ssh --timeout=30 -e "ansible_user=vagrant" -i ansible/inventory -v /tmp/openshift-ansible/playbooks/openshift-metrics/config.yml

ANSIBLE_SSH_ARGS='-o UserKnownHostsFile=/dev/null -o IdentitiesOnly=yes -o IdentityFile=~/.vagrant.d/insecure_private_key -o ControlMaster=auto -o ControlPersist=60s' \
ansible-playbook --connection=ssh --timeout=30 -e "ansible_user=vagrant" -i ansible/inventory -v /tmp/openshift-ansible/playbooks/openshift-prometheus/config.yml

ANSIBLE_SSH_ARGS='-o UserKnownHostsFile=/dev/null -o IdentitiesOnly=yes -o IdentityFile=~/.vagrant.d/insecure_private_key -o ControlMaster=auto -o ControlPersist=60s' \
ansible-playbook --connection=ssh --timeout=30 -e "ansible_user=vagrant" -i ansible/inventory -v /tmp/openshift-ansible/playbooks/openshift-logging/config.yml

ANSIBLE_SSH_ARGS='-o UserKnownHostsFile=/dev/null -o IdentitiesOnly=yes -o IdentityFile=~/.vagrant.d/insecure_private_key -o ControlMaster=auto -o ControlPersist=60s' \
ansible-playbook --connection=ssh --timeout=30 -e "ansible_user=vagrant" -i ansible/inventory -v /tmp/openshift-ansible/playbooks/openshift-autoheal/config.yml
