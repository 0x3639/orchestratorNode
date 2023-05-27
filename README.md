## orchestratorNode

### Instructions to setupSetup

Install Docker 

Download installation script
`curl -fsSL https://get.docker.com -o get-docker.sh`

Install Docker
`sudo sh get-docker.sh`

Clone Repo
`git clone https://github.com/0x3639/orchestratorNode.git`
`cd orchestratorNode`

Build Images and Container
`docker compose up`

Service will build the images but fail to run.  It will create `data` folder under the `orchestratorNode` folder.  Move into it.

`cd data`

update `config.json` with correct values
- Update Ethereum Node
- Undate Zenon Node
- Update ProducerSecret

create a `producer` file under the `data` directory
`touch producer` and paste the producer value into this file

start docker container as a service `docker compose up -d`

make sure to upen port `55055` on the host firewall.  

