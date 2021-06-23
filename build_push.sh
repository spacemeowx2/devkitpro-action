TAG=$(date +%Y%m%d)
NAME=spacemeowx2/devkitpro-action:$TAG
docker build --no-cache -t $NAME .
docker push $NAME
