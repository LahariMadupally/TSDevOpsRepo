# TSDevOpsRepo
Created a repository to integrate it with Jenkins

JENKINS steps:
1. Git Checkout branch
2. Run all the steps in docker file to make sure the image will be sucessfully built
3. If all commands are sucessfully executed, Build the docker image
4. Tag the latest version and the build number
5. Push the image to the docker repository
6. Clean the workspace


DOCKER steps:
1. Define an image in Dockerfile
2. Build tha image: docker build -t tsdevopsrepo .
3. Tag the built image: docker tag <imageID> laharimadupally/jenkins_images:tsdevopsrepo
4. Login to docker repository: docker login --username=<> --passworkd
5. push it to docker registry: docker push laharimadupally/jenkins_images:tsdevopsrepo
6. pull it from registry
7. Execute/run the image to create a docker container