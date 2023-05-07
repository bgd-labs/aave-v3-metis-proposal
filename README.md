# Aave V3 Metis Governance Proposal

This repository contains all the different smart contracts infrastructure and configurations to be used on the Aave v3 Metis activation, via a governance proposal.

## Contracts

- [Activation payload](./src/contracts/AaveV3MetisInitialPayload.sol): The payload deploys all the stewards at the time of creation, and at the time of execution gives the POOL_ADMIN role to all the stewards contracts.

- [Listing steward contracts](./src/contracts/stewards/): The listing stewards gets the POOL_ADMIN role after activation payload is executed and using the listing engine, lists the assets on the metis v3 pool and activates it. Post execution, the steward contract renounces the POOL_ADMIN role.

- [Basic tests and reporting](./tests/AaveV3MetisActivation.t.sol)

## Setup

```sh
cp .env.example .env
forge install
```

## Anvil fork simulation

1. Create an anvil fork of the metis mainnet that runs on the localhost.
```
make create-anvil-fork
```
2. Open another terminal and run the following command. This will execute the payload and the stewards to activate the pool.
```
make setup-fork
```

The url returned by creating the anvil fork in step 1 can be plugged into the aave interface to test stuff.

## Test

```sh
make test
```
