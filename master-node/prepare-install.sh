# Vagrant requirements


# Install requirements
# yum install docker-1.13.1 wget git net-tools bind-utils yum-utils iptables-services bridge-utils bash-completion kexec-tools sos psacct -y
yum install -y git vim nc net-tools java-1.8.0-openjdk-headless python2-passlib
# yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
# sed -i -e "s/^enabled=1/enabled=0/" /etc/yum.repos.d/epel.repo
# yum -y --enablerepo=epel install ansible pyOpenSSL

# clone Ansible installer
# git clone https://github.com/openshift/openshift-ansible
# cd openshift-ansible
# git checkout release-3.10

# Setup localhost
# echo 'Edit hosts file'
# cat > /etc/hosts <<EOF
# 127.0.0.1 localhost localhost.localdomain
# ::1 localhost6 localhost6.localdomain
# 10.0.0.110 okd-master1
# 10.0.0.111 okd-node1
# 10.0.0.112 okd-node2
# EOF
