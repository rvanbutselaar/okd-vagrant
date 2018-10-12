GIT_TMP_DIR=/tmp
ODK_VERSION=release-3.11

clone:
	git clone -b ${ODK_VERSION} https://github.com/openshift/openshift-ansible ${GIT_TMP_DIR}/openshift-ansible

# all-in-one:
# 	@make clone

masternode:
	cd master-node &&	vagrant up

clean:
	rm -rvf ${GIT_TMP_DIR}/openshift-ansible

.PHONY: clone
