# localhost all in one
```
vagrant up
vagrant ssh
cd openshift-ansible
ansible-playbook -i inventory/hosts.localhost playbooks/prerequisites.yml -b -e "openshift_enable_docker_excluder=False"
ansible-playbook -i inventory/hosts.localhost playbooks/deploy_cluster.yml -b
```
