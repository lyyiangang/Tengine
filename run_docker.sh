xhost +local:${USER}
#-u $(id -u):$(id -g) \
docker run -it --rm     \
-u $(id -u) \
-e DISPLAY=$DISPLAY     \
-v /tmp/.X11-unix:/tmp/.X11-unix     \
-v ${PWD}:${PWD} \
-w ${PWD} \
--name tengine \
tengine
