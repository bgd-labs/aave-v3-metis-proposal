```diff
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol
similarity index 99%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol
index db76910..adc5aaf 100644
--- a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol
+++ b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: AGPL-3.0
-pragma solidity 0.8.10;
+pragma solidity ^0.8.0;
 
 /**
  * @dev Interface of the ERC20 standard as defined in the EIP.
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20Detailed.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20Detailed.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20Detailed.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20Detailed.sol
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IAaveIncentivesController.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IAaveIncentivesController.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IAaveIncentivesController.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IAaveIncentivesController.sol
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IInitializableDebtToken.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IInitializableDebtToken.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IInitializableDebtToken.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IInitializableDebtToken.sol
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IPool.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPool.sol
similarity index 99%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IPool.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPool.sol
index 093bd0c..07ed9c5 100644
--- a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IPool.sol
+++ b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPool.sol
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
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IScaledBalanceToken.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IScaledBalanceToken.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IScaledBalanceToken.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IScaledBalanceToken.sol
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IStableDebtToken.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IStableDebtToken.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IStableDebtToken.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IStableDebtToken.sol
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IVariableDebtToken.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IVariableDebtToken.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/interfaces/IVariableDebtToken.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IVariableDebtToken.sol
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/misc/AaveProtocolDataProvider.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/misc/AaveProtocolDataProvider.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/misc/AaveProtocolDataProvider.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/misc/AaveProtocolDataProvider.sol
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/protocol/libraries/configuration/ReserveConfiguration.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/configuration/ReserveConfiguration.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/protocol/libraries/configuration/ReserveConfiguration.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/configuration/ReserveConfiguration.sol
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/protocol/libraries/configuration/UserConfiguration.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/configuration/UserConfiguration.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/protocol/libraries/configuration/UserConfiguration.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/configuration/UserConfiguration.sol
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
similarity index 98%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
index 208130c..c21e875 100644
--- a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
+++ b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
@@ -68,7 +68,7 @@ library Errors {
     string public constant PRICE_ORACLE_SENTINEL_CHECK_FAILED = "59"; // 'Price oracle sentinel validation failed'
     string public constant ASSET_NOT_BORROWABLE_IN_ISOLATION = "60"; // 'Asset is not borrowable in isolation mode'
     string public constant RESERVE_ALREADY_INITIALIZED = "61"; // 'Reserve has already been initialized'
-    string public constant USER_IN_ISOLATION_MODE = "62"; // 'User is in isolation mode'
+    string public constant USER_IN_ISOLATION_MODE_OR_LTV_ZERO = "62"; // 'User is in isolation mode or ltv is zero'
     string public constant INVALID_LTV = "63"; // 'Invalid ltv parameter for the reserve'
     string public constant INVALID_LIQ_THRESHOLD = "64"; // 'Invalid liquidity threshold parameter for the reserve'
     string public constant INVALID_LIQ_BONUS = "65"; // 'Invalid liquidity bonus parameter for the reserve'
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/protocol/libraries/math/WadRayMath.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/math/WadRayMath.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/protocol/libraries/math/WadRayMath.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/math/WadRayMath.sol
diff --git a/downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol b/downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
similarity index 100%
rename from downloads/mainnet/AAVE_PROTOCOL_DATA_PROVIDER/AaveProtocolDataProvider/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
rename to downloads/metis/AAVE_PROTOCOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
```
