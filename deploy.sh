
#!/bin/bash

if [ "$GIT_BRANCH" = "origin/dev" ]; then
    ./build.sh
    docker tag reactimg "$DOCKER_REACT_IMAGED1"
    echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
    docker push "$DOCKER_REACT_IMAGED1"

elif [ "$GIT_BRANCH" = "origin/main" ]; then
    ./build.sh
    docker tag reactimg "$DOCKER_REACT_IMAGEP1"
    echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
    docker push "$DOCKER_REACT_IMAGEP1"

fi
