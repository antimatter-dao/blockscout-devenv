## Download 

```
$ git clone --recursive https://github.com/0xe3b0c4/blockscout-devenv.git
```

## Port

* JSON-RPC: 8545
* Websocket: 8546
* faucet: 8080
* blockscout: 4000

## Startup

```shell
$ docker compose up -d
```

## Enter the container environment and build

```bash
$ docker compose exec blockscout /bin/bash
bash-5.1# /shell/build.sh
```



# Blockscout only

## Download 

```
$ git clone --recursive https://github.com/0xe3b0c4/blockscout-devenv.git
```

## Startup

```shell
$ docker compose -f docker-compose-without-bootnode-faucet.yml up -d
```

## Enter the container environment and build

```bash
$ docker compose exec blockscout /bin/bash
bash-5.1# /shell/build.sh
```

## Update blockscout code
```bash
# kill the process with 4000-port
$ docker compose exec blockscout /bin/bash
bash-5.1# /shell/build_to_restart.sh
```