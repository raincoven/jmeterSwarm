# JMeter running in docker swarm

*Install Docker*
```
$curl -sSL https://get.docker.com/ | sh
```

*Init swarm cluster on master node*
```
$docker swarm init --listen-addr <master-ip>:2377 --advertise-addr <master-ip>:2377
```

*Jet join token*
```
docker swarm join-token worker|manager
```

*Join cluster on Slave node (worker)*
```
$docker swarm join --token <TOKEN> master-ip
```

*Run docker compose*
```
docker stack deploy -c docker-compose.yml jm
```
