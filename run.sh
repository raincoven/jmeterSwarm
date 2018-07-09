# create jmeter docker base image
docker image build -t jmeter/base - < base_image/Dockerfile
docker image build -t jmeter/master - < master_node/Dockerfile
docker image build -t jmeter/slave - < slave_node/Dockerfile
# docker swarm
docker stack deploy -c docker-compose.yml jm
