# Docker for ros1

Guide for setting up a docker container for ros1.


## Acknowledgements

 - [Articulated Robotics](https://github.com/joshnewans/dockerfile_example)



## Installation

```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh --dry-run
  ```
```bash
sudo groupadd docker
sudo usermod -aG docker $USER
```
Check if docker is enabled or not 
```bash
systemctl is-enabled docker 
```
If not run these commands
```bash
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```



    
## Docker container

To build the Dockerfile 

(assuming that you cloned this repo in the Desktop directory )
```bash
cd ~/Desktop/sample
```
login with your username and password/PAT
```bash
docker login
```
build the image
```bash
docker build -t my_ros_image .
```

To run the dockerfile 
```bash
cd ~Desktop/my_code
docker run -it --user ros1 --network=host --ipc=host  -v  $PWD/source:/my_source_code -v /tmp/.X11-unix:/tmp/.X11-unix:rw --env=DISPLAY my_ros_image
```

