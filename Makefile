cluster-up:
	vagrant up --no-provision

cluster-provision:
	vagrant provision node --provision-with=node
	vagrant provision master --provision-with=master

cluster-openshift:
	vagrant provision --provision-with=openshift
	bash util/extract.sh

cluster-ceph:
	vagrant provision --provision-with=ceph

cluster-cinder:
	vagrant provision --provision-with=cinder

cluster-storage:
	vagrant provision --provision-with=storage

cluster-kubevirt:
	vagrant provision --provision-with=kubevirt
