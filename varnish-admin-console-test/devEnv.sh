#!/bin/sh

declare -a caches=("cache1" "cache2" "cache3" "cache4" "cache5")

prog=`basename $0`

up()
{
    for i in "${caches[@]}"; do
        echo " Firing up $i "
        vagrant up $i
    done

}

run()
{
    for i in "${caches[@]}"; do
        echo " Starting all services and sieging $i"
        (vagrant ssh -c './run.sh' $i  > /dev/null 2>&1) &
    done
}

halt(){
    for i in "${caches[@]}"; do
        echo " Stopping $i..."
        vagrant halt $i > /dev/null 2>&1
    done
}

destroy(){
    for i in "${caches[@]}"; do
        echo " Destroying $i..."
        vagrant destroy $i -y> /dev/null 2>&1
    done
}

status(){
    vagrant status
}

usage()
{
	echo "$prog [up|start|stop|destroy|status] [..]"
	exit 2
}

case $1 in
	up) 	shift; up $@;;
	start) 	shift; run $@;;
	stop) 	shift; halt $@;;
	destroy) 	shift; destroy $@;;
	status) 	shift; status $@;;
	*) 	usage;;
esac
