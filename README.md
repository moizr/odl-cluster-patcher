# odl-cluster-patcher
Some scripts to make it easy to deploy a jar as a patch to in an odl cluster

# Setup

In your bash_profile add the following lines,
`
export ODL_PATCHER_HOME=~
export CLUSTER_SSH_USER_NAME=sysadmin
export MY_CLUSTER="10.194.126.97 10.194.126.98 10.194.126.99"
source $ODL_PATCHER_HOME/patch-odl/odl_patcher.sh
`
ODL_PATCH_HOME - should be the parent directory of the directory in which you cloned
the patcher

CLUSTER_SSH_USER_NAME - should be the username that you would use to SSH to the nodes
in the cluster. Note that this should be the same for each node in the cluster

MY_CLUSTER - should be a list of host IP addresses of the hosts in the cluster

patch-odl - is the directory in which you cloned this repository

Make sure to source your bash_profile if you want to use the patch_odl utility immediately

# Running the patcher

Let's say you wanted to patch the openflow plugin impl jar. Do the following,

cd ~/code/openflowplugin/openflowplugin-impl

patch_odl ./target/openflowplugin*.jar
