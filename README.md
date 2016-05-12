# Dockerfiles for public docker images

### When not to put into this repo

* If you can put the Dockerfile in your source repo, do it there instead of here. [Example](https://github.com/MYOB-Technology/pops/blob/master/scripts/Dockerfile)

* If your Dockerfile and supporting artifacts contains private/sensitive data, use a private repository such as ECR. This is a public repo, and images are supposed to be pushed to public Docker Hub.
