# Geth Workshop: Prototyping EIP-3074

## Useful Links

- [event details](https://www.notion.so/Geth-Workshop-Paris-July-21-2021-6b2ab11b7ce7406ab30cefb24ea25ec2)
- [go-ethereum](https://github.com/ethereum/go-ethereum)
- [EIP-3074](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-3074.md)

## Creating a Local Geth Testnet

- make sure you have compiled geth & added the path to your geth binary to `$PATH`:
```
export PATH="path/to/go-ethereum/build/bin:$PATH"
```

- clone this repo:
```
git clone https://github.com/adietrichs/geth-workshop.git && cd geth-workshop
```

- create a signer account (no password)
```
geth account new --datadir data
```

- modify `genesis.json`, replacing the two occurrences of `__SIGNER__` with the address of your signer (in both cases without the leading `0x`)

- initialize chain
```
geth init --datadir data genesis.json
```

- start node (again, replace `__SIGNER__`)
```
geth --datadir data --unlock 0x__SIGNER__ --password .empty --networkid 12345 --mine --nodiscover --http --http.api web3,eth,debug,personal,net --allow-insecure-unlock --http.corsdomain "*"
```
