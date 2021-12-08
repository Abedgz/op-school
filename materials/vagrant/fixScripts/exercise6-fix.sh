#!/bin/bash
#add fix to exercise6-fix here
#!/bin/bash
#add fix to exercise6-fix here
num=0
counter=0
var=""
for ((i=1; i<$#; i++));do
        let counter++
        if  [ ! -f ${!i} ]; then
                echo " some files from your input is not exist o maby u have wrong path"
                exit
        fi
done

if (( counter < 1 )); then
                echo " You have less two arguments"
                exit
        fi

for ((i=1; i<$#; i++));do
        var+=${!i};
        var+=" ";
        len1=($(du -bc ${!i}));
        num=$((num + $len1));
done

if [ `hostname`=="server1" ]; then
        scp -rp $var server2:"${@: -1}"
else
        sshpass -p "vagrant" scp -rp $var server1:"${@: -1}"
fi

echo $num
