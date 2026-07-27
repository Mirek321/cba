set -a
sed -i 's/^DOCKER_HOST_IP=.*/DOCKER_HOST_IP=172.26.87.236/' subor.env
source .env