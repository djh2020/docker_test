# docker_test



##Instructions
Download the image - docker pull djh2020/docker_test
Run the container (in the background) - docker run -d -P --name exposed-ports-in-dockerfile djh2020/docker_test
optional step.  view exposed ports - docker port exposed-ports-in-dockerfile
Find IP address of your host machine - docker-machine ls
View web page in browser http://host-ip:888

if you want to map a different address

docker run -d -p 888:80 djh2020/docker_test
