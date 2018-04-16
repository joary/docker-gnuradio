docker stop gnutest
docker rm gnutest
docker run --name gnutest -ti --net=host --ulimit rtprio=99 -v /tmp/.X11-unix:/tmp/.X11-unix -v $PWD/home:/home basic_gnuradio bash
