rm all.tar.gz
tar -cvf all.tar.gz *.jar *.sh
for host in "$@"
do
  scp all.tar.gz $CLUSTER_SSH_USER_NAME@$host:./
done

for host in "$@"
do
  ssh $CLUSTER_SSH_USER_NAME@$host 'bash -s' < patch_server.sh
done


