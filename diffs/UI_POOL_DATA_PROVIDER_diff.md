```diff
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol
similarity index 99%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol
index db76910..adc5aaf 100644
--- a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol
+++ b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: AGPL-3.0
-pragma solidity 0.8.10;
+pragma solidity ^0.8.0;
 
 /**
  * @dev Interface of the ERC20 standard as defined in the EIP.
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20Detailed.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20Detailed.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20Detailed.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20Detailed.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IAToken.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IAToken.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IAToken.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IAToken.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IAaveIncentivesController.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IAaveIncentivesController.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IAaveIncentivesController.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IAaveIncentivesController.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IAaveOracle.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IAaveOracle.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IAaveOracle.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IAaveOracle.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IDefaultInterestRateStrategy.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IDefaultInterestRateStrategy.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IDefaultInterestRateStrategy.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IDefaultInterestRateStrategy.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IInitializableAToken.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IInitializableAToken.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IInitializableAToken.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IInitializableAToken.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IInitializableDebtToken.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IInitializableDebtToken.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IInitializableDebtToken.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IInitializableDebtToken.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IPool.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPool.sol
similarity index 99%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IPool.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPool.sol
index 093bd0c..07ed9c5 100644
--- a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IPool.sol
+++ b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPool.sol
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
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IPriceOracleGetter.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPriceOracleGetter.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IPriceOracleGetter.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IPriceOracleGetter.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IReserveInterestRateStrategy.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IReserveInterestRateStrategy.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IReserveInterestRateStrategy.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IReserveInterestRateStrategy.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IScaledBalanceToken.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IScaledBalanceToken.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IScaledBalanceToken.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IScaledBalanceToken.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IStableDebtToken.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IStableDebtToken.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IStableDebtToken.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IStableDebtToken.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IVariableDebtToken.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IVariableDebtToken.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/interfaces/IVariableDebtToken.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/interfaces/IVariableDebtToken.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/misc/AaveProtocolDataProvider.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/misc/AaveProtocolDataProvider.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/misc/AaveProtocolDataProvider.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/misc/AaveProtocolDataProvider.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/configuration/ReserveConfiguration.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/configuration/ReserveConfiguration.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/configuration/ReserveConfiguration.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/configuration/ReserveConfiguration.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/configuration/UserConfiguration.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/configuration/UserConfiguration.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/configuration/UserConfiguration.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/configuration/UserConfiguration.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
similarity index 98%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
index 208130c..c21e875 100644
--- a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
+++ b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/helpers/Errors.sol
@@ -68,7 +68,7 @@ library Errors {
     string public constant PRICE_ORACLE_SENTINEL_CHECK_FAILED = "59"; // 'Price oracle sentinel validation failed'
     string public constant ASSET_NOT_BORROWABLE_IN_ISOLATION = "60"; // 'Asset is not borrowable in isolation mode'
     string public constant RESERVE_ALREADY_INITIALIZED = "61"; // 'Reserve has already been initialized'
-    string public constant USER_IN_ISOLATION_MODE = "62"; // 'User is in isolation mode'
+    string public constant USER_IN_ISOLATION_MODE_OR_LTV_ZERO = "62"; // 'User is in isolation mode or ltv is zero'
     string public constant INVALID_LTV = "63"; // 'Invalid ltv parameter for the reserve'
     string public constant INVALID_LIQ_THRESHOLD = "64"; // 'Invalid liquidity threshold parameter for the reserve'
     string public constant INVALID_LIQ_BONUS = "65"; // 'Invalid liquidity bonus parameter for the reserve'
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/math/PercentageMath.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/math/PercentageMath.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/math/PercentageMath.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/math/PercentageMath.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/math/WadRayMath.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/math/WadRayMath.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/math/WadRayMath.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/math/WadRayMath.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/pool/DefaultReserveInterestRateStrategy.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/pool/DefaultReserveInterestRateStrategy.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/core-v3/contracts/protocol/pool/DefaultReserveInterestRateStrategy.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/core-v3/contracts/protocol/pool/DefaultReserveInterestRateStrategy.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/periphery-v3/contracts/misc/UiPoolDataProviderV3.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/periphery-v3/contracts/misc/UiPoolDataProviderV3.sol
similarity index 87%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/periphery-v3/contracts/misc/UiPoolDataProviderV3.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/periphery-v3/contracts/misc/UiPoolDataProviderV3.sol
index 8ccaecc..c9ec2df 100644
--- a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/periphery-v3/contracts/misc/UiPoolDataProviderV3.sol
+++ b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/periphery-v3/contracts/misc/UiPoolDataProviderV3.sol
@@ -39,28 +39,6 @@ contract UiPoolDataProviderV3 is IUiPoolDataProviderV3 {
         marketReferenceCurrencyPriceInUsdProxyAggregator = _marketReferenceCurrencyPriceInUsdProxyAggregator;
     }
 
-    function getInterestRateStrategySlopes(
-        DefaultReserveInterestRateStrategy interestRateStrategy
-    ) internal view returns (InterestRates memory) {
-        InterestRates memory interestRates;
-        interestRates.variableRateSlope1 = interestRateStrategy
-            .getVariableRateSlope1();
-        interestRates.variableRateSlope2 = interestRateStrategy
-            .getVariableRateSlope2();
-        interestRates.stableRateSlope1 = interestRateStrategy
-            .getStableRateSlope1();
-        interestRates.stableRateSlope2 = interestRateStrategy
-            .getStableRateSlope2();
-        interestRates.baseStableBorrowRate = interestRateStrategy
-            .getBaseStableBorrowRate();
-        interestRates.baseVariableBorrowRate = interestRateStrategy
-            .getBaseVariableBorrowRate();
-        interestRates.optimalUsageRatio = interestRateStrategy
-            .OPTIMAL_USAGE_RATIO();
-
-        return interestRates;
-    }
-
     function getReservesList(
         IPoolAddressesProvider provider
     ) public view override returns (address[] memory) {
@@ -172,21 +150,56 @@ contract UiPoolDataProviderV3 is IUiPoolDataProviderV3 {
                 reserveData.isPaused
             ) = reserveConfigurationMap.getFlags();
 
-            InterestRates memory interestRates = getInterestRateStrategySlopes(
-                DefaultReserveInterestRateStrategy(
-                    reserveData.interestRateStrategyAddress
-                )
-            );
-
-            reserveData.variableRateSlope1 = interestRates.variableRateSlope1;
-            reserveData.variableRateSlope2 = interestRates.variableRateSlope2;
-            reserveData.stableRateSlope1 = interestRates.stableRateSlope1;
-            reserveData.stableRateSlope2 = interestRates.stableRateSlope2;
-            reserveData.baseStableBorrowRate = interestRates
-                .baseStableBorrowRate;
-            reserveData.baseVariableBorrowRate = interestRates
-                .baseVariableBorrowRate;
-            reserveData.optimalUsageRatio = interestRates.optimalUsageRatio;
+            // interest rates
+            try
+                DefaultReserveInterestRateStrategy(
+                    reserveData.interestRateStrategyAddress
+                ).getVariableRateSlope1()
+            returns (uint256 res) {
+                reserveData.variableRateSlope1 = res;
+            } catch {}
+            try
+                DefaultReserveInterestRateStrategy(
+                    reserveData.interestRateStrategyAddress
+                ).getVariableRateSlope2()
+            returns (uint256 res) {
+                reserveData.variableRateSlope2 = res;
+            } catch {}
+            try
+                DefaultReserveInterestRateStrategy(
+                    reserveData.interestRateStrategyAddress
+                ).getStableRateSlope1()
+            returns (uint256 res) {
+                reserveData.stableRateSlope1 = res;
+            } catch {}
+            try
+                DefaultReserveInterestRateStrategy(
+                    reserveData.interestRateStrategyAddress
+                ).getStableRateSlope2()
+            returns (uint256 res) {
+                reserveData.stableRateSlope2 = res;
+            } catch {}
+            try
+                DefaultReserveInterestRateStrategy(
+                    reserveData.interestRateStrategyAddress
+                ).getBaseStableBorrowRate()
+            returns (uint256 res) {
+                reserveData.baseStableBorrowRate = res;
+            } catch {}
+            try
+                DefaultReserveInterestRateStrategy(
+                    reserveData.interestRateStrategyAddress
+                ).getBaseVariableBorrowRate()
+            returns (uint256 res) {
+                reserveData.baseVariableBorrowRate = res;
+            } catch {}
+            try
+                DefaultReserveInterestRateStrategy(
+                    reserveData.interestRateStrategyAddress
+                ).OPTIMAL_USAGE_RATIO()
+            returns (uint256 res) {
+                reserveData.optimalUsageRatio = res;
+            } catch {}
 
             // v3 only
             reserveData.eModeCategoryId = uint8(eModeCategoryId);
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/periphery-v3/contracts/misc/interfaces/IEACAggregatorProxy.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/periphery-v3/contracts/misc/interfaces/IEACAggregatorProxy.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/periphery-v3/contracts/misc/interfaces/IEACAggregatorProxy.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/periphery-v3/contracts/misc/interfaces/IEACAggregatorProxy.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/periphery-v3/contracts/misc/interfaces/IERC20DetailedBytes.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/periphery-v3/contracts/misc/interfaces/IERC20DetailedBytes.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/periphery-v3/contracts/misc/interfaces/IERC20DetailedBytes.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/periphery-v3/contracts/misc/interfaces/IERC20DetailedBytes.sol
diff --git a/downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/periphery-v3/contracts/misc/interfaces/IUiPoolDataProviderV3.sol b/downloads/metis/UI_POOL_DATA_PROVIDER/@aave/periphery-v3/contracts/misc/interfaces/IUiPoolDataProviderV3.sol
similarity index 100%
rename from downloads/mainnet/UI_POOL_DATA_PROVIDER/UiPoolDataProviderV3/@aave/periphery-v3/contracts/misc/interfaces/IUiPoolDataProviderV3.sol
rename to downloads/metis/UI_POOL_DATA_PROVIDER/@aave/periphery-v3/contracts/misc/interfaces/IUiPoolDataProviderV3.sol
```
