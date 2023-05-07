# include .env file and export its env vars
# (-include to ignore error if it does not exist)
-include .env

# deps
update:; forge update

# Build & test
build  :; forge build --sizes
test   :; forge test -vvv

deploy-payload :; forge script scripts/AaveV3MetisPayload.s.sol:DeployPayload --rpc-url metis --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv
create-proposal :; forge script scripts/CreateProposal.s.sol:MetisPoolActivationProposal --rpc-url mainnet --broadcast --legacy --ledger --mnemonic-indexes ${MNEMONIC_INDEX} --sender ${LEDGER_SENDER} --verify -vvvv

# Creates an anvil fork
create-anvil-fork :; anvil --fork-url ${RPC_METIS}

# Executes the payload and stewards to setup the fork
setup-fork :; chmod +x fork-setup.sh && ./fork-setup.sh

# Utilities
download :; cast etherscan-source --chain ${chain} -d src/etherscan/${chain}_${address} ${address}
git-diff :
	@mkdir -p diffs
	@printf '%s\n%s\n%s\n' "\`\`\`diff" "$$(git diff --no-index --diff-algorithm=patience --ignore-space-at-eol ${before} ${after})" "\`\`\`" > diffs/${out}.md
