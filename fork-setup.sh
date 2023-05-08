# To load the variables in the .env file
source .env

echo "Setting the block timestamp of the fork"
cast rpc evm_setNextBlockTimestamp 1683553345

cast rpc anvil_impersonateAccount $METIS_WHALE

echo "Executing the payload"
cast send 0x8EC77963068474a45016938Deb95E603Ca82a029 "execute(uint256)" 0 --from $METIS_WHALE --gas-price 100000000000 --gas-limit 500000

echo "Executing DAI Steward"
cast send 0x34EBCE8D5A2CCEBB39eCF8C3eb3D60e2009183dA "execute()" --from $METIS_WHALE --gas-price 100000000000 --gas-limit 5000000

echo "Executing METIS Steward"
cast send 0xe5497d38ce01579c400ba0c97d70caf59b232cc6 "execute()" --from $METIS_WHALE --gas-price 100000000000 --gas-limit 5000000

echo "Executing USDC Steward"
cast send 0x12212a45eed9a04f79c4135ca1b999fb87fd589a "execute()" --from $METIS_WHALE --gas-price 100000000000 --gas-limit 5000000

echo "Executing USDT Steward"
cast send 0x4e868c3ef973370efec01e421981458afbd7bd0f "execute()" --from $METIS_WHALE --gas-price 100000000000 --gas-limit 5000000

echo "Executing WETH Steward"
cast send 0x31143380d36dde8161b7e101365fb27e9bd28eee "execute()" --from $METIS_WHALE --gas-price 100000000000 --gas-limit 5000000

cast send 0xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000 --from $METIS_WHALE "transfer(address,uint256)(bool)" $USER_ADDRESS_TO_FUND 100000000000000000000 --legacy --gas-limit 100000000
cast send 0x420000000000000000000000000000000000000A --from $METIS_WHALE "transfer(address,uint256)(bool)" $USER_ADDRESS_TO_FUND 10000000000000000000 --legacy --gas-limit 100000000
cast send 0xEA32A96608495e54156Ae48931A7c20f0dcc1a21 --from $METIS_WHALE "transfer(address,uint256)(bool)" $USER_ADDRESS_TO_FUND 10000000000 --legacy --gas-limit 100000000
cast send 0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC --from $METIS_WHALE "transfer(address,uint256)(bool)" $USER_ADDRESS_TO_FUND 10000000000 --legacy --gas-limit 100000000

cast rpc anvil_setBalance $USER_ADDRESS_TO_FUND 10000000000000000000

echo "Fork setup finished"