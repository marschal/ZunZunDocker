# ZunZunSite3 in a Docker container
This repository encapsulates the web-based curve fitting tool http://zunzun.com (find it on [GitHub](https://github.com/zunzun/zunzunsite3) or [Bitbucket](https://bitbucket.org/zunzuncode/zunzunsite3)) into a Docker container based on a Ubuntu image.

The app spawns on port `8080` by default.

## Pre-build image
There is an pre-build image availiable from DockerHub.

### Pull
```
docker pull XYZ
```

### Run
Random port assigned by docker:
```
docker run --rm -dit --name ZunZunSite3 -p 8080 dborisov/zunzunsite3
```

Custom specified port:
```
docker run --rm -dit --name ZunZunSite3 -p [PORT]:8080 dborisov/zunzunsite3
```


## Custom build
To build the container locally, simply check out this repository:
```
git clone XYZ
```
Then change into the cloned directory and execute the included build script:
```
cd XYZ
./build.sh
```

### Start / Run the container
To run the container execute the included run script:
```
./run.sh
```
Or see the `docer run` commands above.
