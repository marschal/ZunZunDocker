# ZunZunSite3 in a Docker container
This repository encapsulates the web-based curve fitting tool http://zunzun.com (find it on [GitHub](https://github.com/zunzun/zunzunsite3) or [Bitbucket](https://bitbucket.org/zunzuncode/zunzunsite3)) into a Docker container based on a Ubuntu image.

The app spawns on port `8080` by default.

## Pre-build image
There is an pre-build image availiable from DockerHub.

### Pull
```
docker pull marschal/zunzun_docker:latest
```

### Run
Random port assigned by docker:
```
docker run --rm -dit --name ZunZunSite3 -p 8080 marschal/zunzun_docker
```

Custom specified port:
```
docker run --rm -dit --name ZunZunSite3 -p [PORT]:8080 marschal/zunzun_docker
```


## Custom build
To build the container locally, simply check out this repository:
```
git clone https://github.com/marschal/ZunZunDocker.git
```
Then change into the cloned directory and execute the included build script:
```
cd ZunZunDocker
./build.sh
```

### Start / Run the container
To run the container execute the included run script:
```
./run.sh
```
Or see the `docer run` commands above.
