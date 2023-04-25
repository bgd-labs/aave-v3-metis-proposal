```diff
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Address.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Address.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Address.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/Address.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/dependencies/openzeppelin/upgradeability/BaseUpgradeabilityProxy.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/dependencies/openzeppelin/upgradeability/BaseUpgradeabilityProxy.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/dependencies/openzeppelin/upgradeability/BaseUpgradeabilityProxy.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/dependencies/openzeppelin/upgradeability/BaseUpgradeabilityProxy.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/dependencies/openzeppelin/upgradeability/InitializableUpgradeabilityProxy.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/dependencies/openzeppelin/upgradeability/InitializableUpgradeabilityProxy.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/dependencies/openzeppelin/upgradeability/InitializableUpgradeabilityProxy.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/dependencies/openzeppelin/upgradeability/InitializableUpgradeabilityProxy.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/dependencies/openzeppelin/upgradeability/Proxy.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/dependencies/openzeppelin/upgradeability/Proxy.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/dependencies/openzeppelin/upgradeability/Proxy.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/dependencies/openzeppelin/upgradeability/Proxy.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IACLManager.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IACLManager.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IACLManager.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IACLManager.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IAaveIncentivesController.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IAaveIncentivesController.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IAaveIncentivesController.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IAaveIncentivesController.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IInitializableAToken.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IInitializableAToken.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IInitializableAToken.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IInitializableAToken.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IInitializableDebtToken.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IInitializableDebtToken.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IInitializableDebtToken.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IInitializableDebtToken.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IPool.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IPool.sol
similarity index 99%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IPool.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IPool.sol
index 093bd0c..07ed9c5 100644
--- a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IPool.sol
+++ b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IPool.sol
@@ -462,7 +462,7 @@ interface IPool {
      * @notice Allows smartcontracts to access the liquidity of the pool within one transaction,
      * as long as the amount taken plus a fee is returned.
      * @dev IMPORTANT There are security concerns for developers of flashloan receiver contracts that must be kept
-     * into consideration. For further details please visit https://developers.aave.com
+     * into consideration. For further details please visit https://docs.aave.com/developers/
      * @param receiverAddress The address of the contract receiving the funds, implementing IFlashLoanReceiver interface
      * @param assets The addresses of the assets being flash-borrowed
      * @param amounts The amounts of the assets being flash-borrowed
@@ -489,7 +489,7 @@ interface IPool {
      * @notice Allows smartcontracts to access the liquidity of the pool within one transaction,
      * as long as the amount taken plus a fee is returned.
      * @dev IMPORTANT There are security concerns for developers of flashloan receiver contracts that must be kept
-     * into consideration. For further details please visit https://developers.aave.com
+     * into consideration. For further details please visit https://docs.aave.com/developers/
      * @param receiverAddress The address of the contract receiving the funds, implementing IFlashLoanSimpleReceiver interface
      * @param asset The address of the asset being flash-borrowed
      * @param amount The amount of the asset being flash-borrowed
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IPoolConfigurator.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IPoolConfigurator.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IPoolConfigurator.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IPoolConfigurator.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/aave-upgradeability/BaseImmutableAdminUpgradeabilityProxy.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/aave-upgradeability/BaseImmutableAdminUpgradeabilityProxy.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/aave-upgradeability/BaseImmutableAdminUpgradeabilityProxy.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/aave-upgradeability/BaseImmutableAdminUpgradeabilityProxy.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/aave-upgradeability/InitializableImmutableAdminUpgradeabilityProxy.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/aave-upgradeability/InitializableImmutableAdminUpgradeabilityProxy.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/aave-upgradeability/InitializableImmutableAdminUpgradeabilityProxy.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/aave-upgradeability/InitializableImmutableAdminUpgradeabilityProxy.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/aave-upgradeability/VersionedInitializable.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/aave-upgradeability/VersionedInitializable.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/aave-upgradeability/VersionedInitializable.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/aave-upgradeability/VersionedInitializable.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/configuration/ReserveConfiguration.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/configuration/ReserveConfiguration.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/configuration/ReserveConfiguration.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/configuration/ReserveConfiguration.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
similarity index 98%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
index 208130c..c21e875 100644
--- a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
+++ b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
@@ -68,7 +68,7 @@ library Errors {
     string public constant PRICE_ORACLE_SENTINEL_CHECK_FAILED = "59"; // 'Price oracle sentinel validation failed'
     string public constant ASSET_NOT_BORROWABLE_IN_ISOLATION = "60"; // 'Asset is not borrowable in isolation mode'
     string public constant RESERVE_ALREADY_INITIALIZED = "61"; // 'Reserve has already been initialized'
-    string public constant USER_IN_ISOLATION_MODE = "62"; // 'User is in isolation mode'
+    string public constant USER_IN_ISOLATION_MODE_OR_LTV_ZERO = "62"; // 'User is in isolation mode or ltv is zero'
     string public constant INVALID_LTV = "63"; // 'Invalid ltv parameter for the reserve'
     string public constant INVALID_LIQ_THRESHOLD = "64"; // 'Invalid liquidity threshold parameter for the reserve'
     string public constant INVALID_LIQ_BONUS = "65"; // 'Invalid liquidity bonus parameter for the reserve'
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/logic/ConfiguratorLogic.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/logic/ConfiguratorLogic.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/logic/ConfiguratorLogic.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/logic/ConfiguratorLogic.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/math/PercentageMath.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/math/PercentageMath.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/math/PercentageMath.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/math/PercentageMath.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/types/ConfiguratorInputTypes.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/types/ConfiguratorInputTypes.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/types/ConfiguratorInputTypes.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/types/ConfiguratorInputTypes.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
diff --git a/downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/pool/PoolConfigurator.sol b/downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/pool/PoolConfigurator.sol
similarity index 100%
rename from downloads/mainnet/POOL_CONFIGURATOR_IMPL/PoolConfigurator/@aave/core-v3/contracts/protocol/pool/PoolConfigurator.sol
rename to downloads/metis/POOL_CONFIGURATOR_IMPL/@aave/core-v3/contracts/protocol/pool/PoolConfigurator.sol
```
