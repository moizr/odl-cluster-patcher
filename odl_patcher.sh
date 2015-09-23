function patch_odl() {
    if [ $# -eq 0 ]
      then
        echo "A jar file should be provided as input"
        return 99
    fi
    patch_cluster "odl" $1
}

function patch_cluster() {
    CWD=`pwd`
    rm $ODL_PATCHER_HOME/patch-$1/*.jar
    cp $2 $ODL_PATCHER_HOME/patch-$1/
    cd $ODL_PATCHER_HOME/patch-$1
    ./patch_cluster.sh $MY_CLUSTER
    cd $CWD
}
