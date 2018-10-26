# Vagrant requirements
yum install -y git vim nc net-tools java-1.8.0-openjdk-headless python2-passlib
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sed -i -e "s/^enabled=1/enabled=0/" /etc/yum.repos.d/epel.repo
yum -y --enablerepo=epel install python-pip pyOpenSSL
pip install pip --upgrade
pip install ansible==2.4.3.0

# clone Ansible installer
git clone https://github.com/openshift/openshift-ansible
cd openshift-ansible
git checkout release-3.10
