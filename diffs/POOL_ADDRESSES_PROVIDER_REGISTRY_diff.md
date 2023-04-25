```diff
diff --git a/downloads/mainnet/POOL_ADDRESSES_PROVIDER_REGISTRY/PoolAddressesProviderRegistry/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Context.sol b/downloads/metis/POOL_ADDRESSES_PROVIDER_REGISTRY/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Context.sol
similarity index 100%
rename from downloads/mainnet/POOL_ADDRESSES_PROVIDER_REGISTRY/PoolAddressesProviderRegistry/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Context.sol
rename to downloads/metis/POOL_ADDRESSES_PROVIDER_REGISTRY/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Context.sol
diff --git a/downloads/mainnet/POOL_ADDRESSES_PROVIDER_REGISTRY/PoolAddressesProviderRegistry/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Ownable.sol b/downloads/metis/POOL_ADDRESSES_PROVIDER_REGISTRY/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Ownable.sol
similarity index 100%
rename from downloads/mainnet/POOL_ADDRESSES_PROVIDER_REGISTRY/PoolAddressesProviderRegistry/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Ownable.sol
rename to downloads/metis/POOL_ADDRESSES_PROVIDER_REGISTRY/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Ownable.sol
diff --git a/downloads/mainnet/POOL_ADDRESSES_PROVIDER_REGISTRY/PoolAddressesProviderRegistry/@aave/core-v3/contracts/interfaces/IPoolAddressesProviderRegistry.sol b/downloads/metis/POOL_ADDRESSES_PROVIDER_REGISTRY/@aave/core-v3/contracts/interfaces/IPoolAddressesProviderRegistry.sol
similarity index 100%
rename from downloads/mainnet/POOL_ADDRESSES_PROVIDER_REGISTRY/PoolAddressesProviderRegistry/@aave/core-v3/contracts/interfaces/IPoolAddressesProviderRegistry.sol
rename to downloads/metis/POOL_ADDRESSES_PROVIDER_REGISTRY/@aave/core-v3/contracts/interfaces/IPoolAddressesProviderRegistry.sol
diff --git a/downloads/mainnet/POOL_ADDRESSES_PROVIDER_REGISTRY/PoolAddressesProviderRegistry/@aave/core-v3/contracts/protocol/configuration/PoolAddressesProviderRegistry.sol b/downloads/metis/POOL_ADDRESSES_PROVIDER_REGISTRY/@aave/core-v3/contracts/protocol/configuration/PoolAddressesProviderRegistry.sol
similarity index 100%
rename from downloads/mainnet/POOL_ADDRESSES_PROVIDER_REGISTRY/PoolAddressesProviderRegistry/@aave/core-v3/contracts/protocol/configuration/PoolAddressesProviderRegistry.sol
rename to downloads/metis/POOL_ADDRESSES_PROVIDER_REGISTRY/@aave/core-v3/contracts/protocol/configuration/PoolAddressesProviderRegistry.sol
diff --git a/downloads/mainnet/POOL_ADDRESSES_PROVIDER_REGISTRY/PoolAddressesProviderRegistry/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol b/downloads/metis/POOL_ADDRESSES_PROVIDER_REGISTRY/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
similarity index 98%
rename from downloads/mainnet/POOL_ADDRESSES_PROVIDER_REGISTRY/PoolAddressesProviderRegistry/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
rename to downloads/metis/POOL_ADDRESSES_PROVIDER_REGISTRY/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
index 208130c..c21e875 100644
--- a/downloads/mainnet/POOL_ADDRESSES_PROVIDER_REGISTRY/PoolAddressesProviderRegistry/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
+++ b/downloads/metis/POOL_ADDRESSES_PROVIDER_REGISTRY/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
@@ -68,7 +68,7 @@ library Errors {
     string public constant PRICE_ORACLE_SENTINEL_CHECK_FAILED = "59"; // 'Price oracle sentinel validation failed'
     string public constant ASSET_NOT_BORROWABLE_IN_ISOLATION = "60"; // 'Asset is not borrowable in isolation mode'
     string public constant RESERVE_ALREADY_INITIALIZED = "61"; // 'Reserve has already been initialized'
-    string public constant USER_IN_ISOLATION_MODE = "62"; // 'User is in isolation mode'
+    string public constant USER_IN_ISOLATION_MODE_OR_LTV_ZERO = "62"; // 'User is in isolation mode or ltv is zero'
     string public constant INVALID_LTV = "63"; // 'Invalid ltv parameter for the reserve'
     string public constant INVALID_LIQ_THRESHOLD = "64"; // 'Invalid liquidity threshold parameter for the reserve'
     string public constant INVALID_LIQ_BONUS = "65"; // 'Invalid liquidity bonus parameter for the reserve'
```
