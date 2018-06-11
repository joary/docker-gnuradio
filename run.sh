source ./config

xhost + local:docker

docker stop $IMAGENAME
docker rm $IMAGENAME
docker run --name $IMAGENAME -it --net=host --ulimit rtprio=99 -v /tmp/.X11-unix:/tmp/.X11-unix $VOLUMES $IMAGENAME bash
