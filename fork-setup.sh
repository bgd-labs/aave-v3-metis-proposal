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

echo "Approving 1 WETH to the pool from AAVE_WHALE"
cast send 0x420000000000000000000000000000000000000a --from $METIS_WHALE "approve(address,uint256)" 0x90df02551bB792286e8D4f13E0e357b4Bf1D6a57 1000000000000000000

echo "Supplying 1 WETH from AAVE_WHALE"
cast send 0x90df02551bB792286e8D4f13E0e357b4Bf1D6a57 --from $METIS_WHALE "supply(address,uint256,address,uint16)" 0x420000000000000000000000000000000000000a 1000000000000000000 0x1E5CE6F088fD0adb4fCFf31Cfb02A61503311bE9 0

echo "Borrowing 0.1 WETH from AAVE_WHALE"
cast send 0x90df02551bB792286e8D4f13E0e357b4Bf1D6a57 --from $METIS_WHALE "borrow(address,uint256,uint256,uint16,address)" 0x420000000000000000000000000000000000000a 100000000000000000 2 0 0x1E5CE6F088fD0adb4fCFf31Cfb02A61503311bE9

echo "Fork setup finished"