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

## Test

```sh
make test
```
