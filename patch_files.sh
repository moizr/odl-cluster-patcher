for f in `ls $1/*.jar | xargs -n 1 basename`
do
    out=`find . -name $f`
    sudo cp $1/$f $out
done

# for f in `ls $1/*.xml | xargs -n 1 basename`
# do
#     sudo cp $1/$f ./etc/opendaylight/karaf/$f
# done
