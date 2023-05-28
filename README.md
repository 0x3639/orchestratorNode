# Orchestrator Node for Zenon Network in Docker

## Instructions to Setup

### Install Docker 

Download the Docker installation script
```
curl -fsSL https://get.docker.com -o get-docker.sh
```

Install Docker
```
sudo sh get-docker.sh
```

### Setup Orchestrator

Clone repo
```
git clone --recurse-submodules https://github.com/0x3639/orchestratorNode.git
cd orchestratorNode
```


Build images and container
```
sudo docker compose up
```

Service will build the images but fail to run.  It will create `data` folder under the `orchestratorNode` folder.  Move into it.

```
cd data
```

update `config.json` with correct values
- Update Ethereum Node
- Undate Zenon Node
- Update ProducerSecret

```
sudo nano config.json
```

You can find the contents of the `producer` file on the pillar.  Run this command (on the pillar) to get the `producer` contents. Copy the contents of the output.
```
sudo cat /root/.znn/wallet/producer
```

Create a `producer` file under the `data` directory. Paste the contents of the step above into this file.
```
sudo nano producer
```
 
Start the Docker container as a background service 
```
sudo docker compose up -d
```
You can follow the log files of the orchestrator by typing this command
```
sudo docker compose logs --follow
```

Make sure to open port `tcp 55055` on the host firewall.  

