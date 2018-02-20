# OpenShift, Ceph, KubeVirt Multinode Deployment

## Create cluster with Vagrant

This will create an OpenShift cluster with one manster and one node via
Vagrant:

### Base cluster

```bash
make cluster-up
make cluster-provision
```

This will create two VMs and perform some initial setup tasks relevant for all
configurations.  Once this step is complete you may proceed with deploying
openshift or skip to ceph.

### OpenShift

```bash
make cluster-openshift
```

The deployment can take pretty long. Also you will not see much output from the
openshift installer while it is running. To see what is going on in the installer run

```bash
vagrant ssh master -c "tailf /ansible.log"
```

Once the deployment is done, you can directly talk to the master via `./oc.sh`:

```bash
$ ./oc.sh get nodes
NAME      STATUS    ROLES     AGE       VERSION
master    Ready     master    3h        v1.9.1+a0ce1bc657
node      Ready     <none>    3h        v1.9.1+a0ce1bc657
```

### Ceph

To deploy containerized ceph on the cluster run

```
make cluster-ceph
```
