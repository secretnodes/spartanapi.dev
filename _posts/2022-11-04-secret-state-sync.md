---
layout: post
custom_js: mouse_coords
---

### Secret State Sync 

If you need to state sync a secretnode, you can use the following info.

secret
1. [Secret state sync server a](https://secret-state-sync-a.spartanapi.dev:443)
2. [Secret state sync server b](https://secret-state-sync-b.spartanapi.dev:443)

Script

Save as state-synce.sh
```
nano state-sync.sh
```

add the following and save
```
STATE_SYNC_RPC=https://secret-state-sync-b.spartanapi.dev:443/
STATE_SYNC_RPC_2=https://secret-state-sync-a.spartanapi.dev:443/
STATE_SYNC_PEER=bfc22ec9d8ecf68264957a40677b19b820d6a967@162.251.235.242:26656
LATEST_HEIGHT=$(curl -s $STATE_SYNC_RPC/block | jq -r .result.block.header.height)
SYNC_BLOCK_HEIGHT=$(($LATEST_HEIGHT - 2000))
SYNC_BLOCK_HASH=$(curl -s "$STATE_SYNC_RPC/block?height=$SYNC_BLOCK_HEIGHT" | jq -r .result.block_id.hash)

sed -i.bak -e "s|^enable *=.*|enable = true|" $HOME/.secretd/config/config.toml
sed -i.bak -e "s|^rpc_servers *=.*|rpc_servers = \"$STATE_SYNC_RPC,$STATE_SYNC_RPC_2\"|" \
  $HOME/.secretd/config/config.toml
sed -i.bak -e "s|^trust_height *=.*|trust_height = $SYNC_BLOCK_HEIGHT|" \
  $HOME/.secretd/config/config.toml
sed -i.bak -e "s|^trust_hash *=.*|trust_hash = \"$SYNC_BLOCK_HASH\"|" \
  $HOME/.secretd/config/config.toml
sed -i.bak -e "s|^persistent_peers *=.*|persistent_peers = \"$STATE_SYNC_PEER\"|" \
  $HOME/.secretd/config/config.toml
```

run

```
bash state-sync.sh
```

## State sync endpoint rules

Note : Please only use for this purpose.
