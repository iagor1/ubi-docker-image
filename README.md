
# packer-ubi9-image-docker
packer creates a customized image, you can deploy using docker aws azure etc. 
In this code i'm creating a customized image based on rhel9 base image and deploying with docker. 
# How to run
1 - install packer
2 - install docker
3 - in the folder project, run this commands : 
```sh 
packer init .
```
```sh 
packer build .
```
*you may need root privelege for docker builds the images*

after this steps you can find your images with this command : 
```sh 
docker images -a
```
this command list all images

And to inicialize a container use this command :

```sh 
docker container run -it --rm IMAGE_ID
```
-it means to run interactively

--rm means to destroy the container after we close the connection
