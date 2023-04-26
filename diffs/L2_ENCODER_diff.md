```diff
diff --git a/downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/SafeCast.sol b/downloads/metis/L2_ENCODER/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/SafeCast.sol
similarity index 100%
rename from downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/SafeCast.sol
rename to downloads/metis/L2_ENCODER/@aave/core-v3/contracts/dependencies/openzeppelin/contracts/SafeCast.sol
diff --git a/downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/interfaces/IPool.sol b/downloads/metis/L2_ENCODER/@aave/core-v3/contracts/interfaces/IPool.sol
similarity index 95%
rename from downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/interfaces/IPool.sol
rename to downloads/metis/L2_ENCODER/@aave/core-v3/contracts/interfaces/IPool.sol
index 91a8d2f..07ed9c5 100644
--- a/downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/interfaces/IPool.sol
+++ b/downloads/metis/L2_ENCODER/@aave/core-v3/contracts/interfaces/IPool.sol
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: AGPL-3.0
-pragma solidity 0.8.10;
+pragma solidity ^0.8.0;
 
 import {IPoolAddressesProvider} from "./IPoolAddressesProvider.sol";
 import {DataTypes} from "../protocol/libraries/types/DataTypes.sol";
@@ -8,7 +8,7 @@ import {DataTypes} from "../protocol/libraries/types/DataTypes.sol";
  * @title IPool
  * @author Aave
  * @notice Defines the basic interface for an Aave Pool.
- **/
+ */
 interface IPool {
     /**
      * @dev Emitted on mintUnbacked()
@@ -17,7 +17,7 @@ interface IPool {
      * @param onBehalfOf The beneficiary of the supplied assets, receiving the aTokens
      * @param amount The amount of supplied assets
      * @param referralCode The referral code used
-     **/
+     */
     event MintUnbacked(
         address indexed reserve,
         address user,
@@ -32,7 +32,7 @@ interface IPool {
      * @param backer The address paying for the backing
      * @param amount The amount added as backing
      * @param fee The amount paid in fees
-     **/
+     */
     event BackUnbacked(
         address indexed reserve,
         address indexed backer,
@@ -47,7 +47,7 @@ interface IPool {
      * @param onBehalfOf The beneficiary of the supply, receiving the aTokens
      * @param amount The amount supplied
      * @param referralCode The referral code used
-     **/
+     */
     event Supply(
         address indexed reserve,
         address user,
@@ -62,7 +62,7 @@ interface IPool {
      * @param user The address initiating the withdrawal, owner of aTokens
      * @param to The address that will receive the underlying
      * @param amount The amount to be withdrawn
-     **/
+     */
     event Withdraw(
         address indexed reserve,
         address indexed user,
@@ -80,7 +80,7 @@ interface IPool {
      * @param interestRateMode The rate mode: 1 for Stable, 2 for Variable
      * @param borrowRate The numeric rate at which the user has borrowed, expressed in ray
      * @param referralCode The referral code used
-     **/
+     */
     event Borrow(
         address indexed reserve,
         address user,
@@ -98,7 +98,7 @@ interface IPool {
      * @param repayer The address of the user initiating the repay(), providing the funds
      * @param amount The amount repaid
      * @param useATokens True if the repayment is done using aTokens, `false` if done with underlying asset directly
-     **/
+     */
     event Repay(
         address indexed reserve,
         address indexed user,
@@ -112,7 +112,7 @@ interface IPool {
      * @param reserve The address of the underlying asset of the reserve
      * @param user The address of the user swapping his rate mode
      * @param interestRateMode The current interest rate mode of the position being swapped: 1 for Stable, 2 for Variable
-     **/
+     */
     event SwapBorrowRateMode(
         address indexed reserve,
         address indexed user,
@@ -133,14 +133,14 @@ interface IPool {
      * @dev Emitted when the user selects a certain asset category for eMode
      * @param user The address of the user
      * @param categoryId The category id
-     **/
+     */
     event UserEModeSet(address indexed user, uint8 categoryId);
 
     /**
      * @dev Emitted on setUserUseReserveAsCollateral()
      * @param reserve The address of the underlying asset of the reserve
      * @param user The address of the user enabling the usage as collateral
-     **/
+     */
     event ReserveUsedAsCollateralEnabled(
         address indexed reserve,
         address indexed user
@@ -150,7 +150,7 @@ interface IPool {
      * @dev Emitted on setUserUseReserveAsCollateral()
      * @param reserve The address of the underlying asset of the reserve
      * @param user The address of the user enabling the usage as collateral
-     **/
+     */
     event ReserveUsedAsCollateralDisabled(
         address indexed reserve,
         address indexed user
@@ -160,7 +160,7 @@ interface IPool {
      * @dev Emitted on rebalanceStableBorrowRate()
      * @param reserve The address of the underlying asset of the reserve
      * @param user The address of the user for which the rebalance has been executed
-     **/
+     */
     event RebalanceStableBorrowRate(
         address indexed reserve,
         address indexed user
@@ -175,7 +175,7 @@ interface IPool {
      * @param interestRateMode The flashloan mode: 0 for regular flashloan, 1 for Stable debt, 2 for Variable debt
      * @param premium The fee flash borrowed
      * @param referralCode The referral code used
-     **/
+     */
     event FlashLoan(
         address indexed target,
         address initiator,
@@ -196,7 +196,7 @@ interface IPool {
      * @param liquidator The address of the liquidator
      * @param receiveAToken True if the liquidators wants to receive the collateral aTokens, `false` if he wants
      * to receive the underlying collateral asset directly
-     **/
+     */
     event LiquidationCall(
         address indexed collateralAsset,
         address indexed debtAsset,
@@ -215,7 +215,7 @@ interface IPool {
      * @param variableBorrowRate The next variable borrow rate
      * @param liquidityIndex The next liquidity index
      * @param variableBorrowIndex The next variable borrow index
-     **/
+     */
     event ReserveDataUpdated(
         address indexed reserve,
         uint256 liquidityRate,
@@ -229,17 +229,17 @@ interface IPool {
      * @dev Emitted when the protocol treasury receives minted aTokens from the accrued interest.
      * @param reserve The address of the reserve
      * @param amountMinted The amount minted to the treasury
-     **/
+     */
     event MintedToTreasury(address indexed reserve, uint256 amountMinted);
 
     /**
-     * @dev Mints an `amount` of aTokens to the `onBehalfOf`
+     * @notice Mints an `amount` of aTokens to the `onBehalfOf`
      * @param asset The address of the underlying asset to mint
      * @param amount The amount to mint
      * @param onBehalfOf The address that will receive the aTokens
      * @param referralCode Code used to register the integrator originating the operation, for potential rewards.
      *   0 if the action is executed directly by the user, without any middle-man
-     **/
+     */
     function mintUnbacked(
         address asset,
         uint256 amount,
@@ -248,12 +248,17 @@ interface IPool {
     ) external;
 
     /**
-     * @dev Back the current unbacked underlying with `amount` and pay `fee`.
+     * @notice Back the current unbacked underlying with `amount` and pay `fee`.
      * @param asset The address of the underlying asset to back
      * @param amount The amount to back
      * @param fee The amount paid in fees
-     **/
-    function backUnbacked(address asset, uint256 amount, uint256 fee) external;
+     * @return The backed amount
+     */
+    function backUnbacked(
+        address asset,
+        uint256 amount,
+        uint256 fee
+    ) external returns (uint256);
 
     /**
      * @notice Supplies an `amount` of underlying asset into the reserve, receiving in return overlying aTokens.
@@ -265,7 +270,7 @@ interface IPool {
      *   is a different wallet
      * @param referralCode Code used to register the integrator originating the operation, for potential rewards.
      *   0 if the action is executed directly by the user, without any middle-man
-     **/
+     */
     function supply(
         address asset,
         uint256 amount,
@@ -287,7 +292,7 @@ interface IPool {
      * @param permitV The V parameter of ERC712 permit sig
      * @param permitR The R parameter of ERC712 permit sig
      * @param permitS The S parameter of ERC712 permit sig
-     **/
+     */
     function supplyWithPermit(
         address asset,
         uint256 amount,
@@ -309,7 +314,7 @@ interface IPool {
      *   wants to receive it on his own wallet, or a different address if the beneficiary is a
      *   different wallet
      * @return The final amount withdrawn
-     **/
+     */
     function withdraw(
         address asset,
         uint256 amount,
@@ -330,7 +335,7 @@ interface IPool {
      * @param onBehalfOf The address of the user who will receive the debt. Should be the address of the borrower itself
      * calling the function if he wants to borrow against his own collateral, or the address of the credit delegator
      * if he has been given credit delegation allowance
-     **/
+     */
     function borrow(
         address asset,
         uint256 amount,
@@ -350,7 +355,7 @@ interface IPool {
      * user calling the function if he wants to reduce/remove his own debt, or the address of any other
      * other borrower whose debt should be removed
      * @return The final amount repaid
-     **/
+     */
     function repay(
         address asset,
         uint256 amount,
@@ -373,7 +378,7 @@ interface IPool {
      * @param permitR The R parameter of ERC712 permit sig
      * @param permitS The S parameter of ERC712 permit sig
      * @return The final amount repaid
-     **/
+     */
     function repayWithPermit(
         address asset,
         uint256 amount,
@@ -396,7 +401,7 @@ interface IPool {
      * - Send the value type(uint256).max in order to repay the whole debt for `asset` on the specific `debtMode`
      * @param interestRateMode The interest rate mode at of the debt the user wants to repay: 1 for Stable, 2 for Variable
      * @return The final amount repaid
-     **/
+     */
     function repayWithATokens(
         address asset,
         uint256 amount,
@@ -407,7 +412,7 @@ interface IPool {
      * @notice Allows a borrower to swap his debt between stable and variable mode, or vice versa
      * @param asset The address of the underlying asset borrowed
      * @param interestRateMode The current interest rate mode of the position being swapped: 1 for Stable, 2 for Variable
-     **/
+     */
     function swapBorrowRateMode(
         address asset,
         uint256 interestRateMode
@@ -421,14 +426,14 @@ interface IPool {
      *        much has been borrowed at a stable rate and suppliers are not earning enough
      * @param asset The address of the underlying asset borrowed
      * @param user The address of the user to be rebalanced
-     **/
+     */
     function rebalanceStableBorrowRate(address asset, address user) external;
 
     /**
      * @notice Allows suppliers to enable/disable a specific supplied asset as collateral
      * @param asset The address of the underlying asset supplied
      * @param useAsCollateral True if the user wants to use the supply as collateral, false otherwise
-     **/
+     */
     function setUserUseReserveAsCollateral(
         address asset,
         bool useAsCollateral
@@ -444,7 +449,7 @@ interface IPool {
      * @param debtToCover The debt amount of borrowed `asset` the liquidator wants to cover
      * @param receiveAToken True if the liquidators wants to receive the collateral aTokens, `false` if he wants
      * to receive the underlying collateral asset directly
-     **/
+     */
     function liquidationCall(
         address collateralAsset,
         address debtAsset,
@@ -457,7 +462,7 @@ interface IPool {
      * @notice Allows smartcontracts to access the liquidity of the pool within one transaction,
      * as long as the amount taken plus a fee is returned.
      * @dev IMPORTANT There are security concerns for developers of flashloan receiver contracts that must be kept
-     * into consideration. For further details please visit https://developers.aave.com
+     * into consideration. For further details please visit https://docs.aave.com/developers/
      * @param receiverAddress The address of the contract receiving the funds, implementing IFlashLoanReceiver interface
      * @param assets The addresses of the assets being flash-borrowed
      * @param amounts The amounts of the assets being flash-borrowed
@@ -469,7 +474,7 @@ interface IPool {
      * @param params Variadic packed params to pass to the receiver as extra information
      * @param referralCode The code used to register the integrator originating the operation, for potential rewards.
      *   0 if the action is executed directly by the user, without any middle-man
-     **/
+     */
     function flashLoan(
         address receiverAddress,
         address[] calldata assets,
@@ -484,14 +489,14 @@ interface IPool {
      * @notice Allows smartcontracts to access the liquidity of the pool within one transaction,
      * as long as the amount taken plus a fee is returned.
      * @dev IMPORTANT There are security concerns for developers of flashloan receiver contracts that must be kept
-     * into consideration. For further details please visit https://developers.aave.com
+     * into consideration. For further details please visit https://docs.aave.com/developers/
      * @param receiverAddress The address of the contract receiving the funds, implementing IFlashLoanSimpleReceiver interface
      * @param asset The address of the asset being flash-borrowed
      * @param amount The amount of the asset being flash-borrowed
      * @param params Variadic packed params to pass to the receiver as extra information
      * @param referralCode The code used to register the integrator originating the operation, for potential rewards.
      *   0 if the action is executed directly by the user, without any middle-man
-     **/
+     */
     function flashLoanSimple(
         address receiverAddress,
         address asset,
@@ -509,7 +514,7 @@ interface IPool {
      * @return currentLiquidationThreshold The liquidation threshold of the user
      * @return ltv The loan to value of The user
      * @return healthFactor The current health factor of the user
-     **/
+     */
     function getUserAccountData(
         address user
     )
@@ -533,7 +538,7 @@ interface IPool {
      * @param stableDebtAddress The address of the StableDebtToken that will be assigned to the reserve
      * @param variableDebtAddress The address of the VariableDebtToken that will be assigned to the reserve
      * @param interestRateStrategyAddress The address of the interest rate strategy contract
-     **/
+     */
     function initReserve(
         address asset,
         address aTokenAddress,
@@ -546,7 +551,7 @@ interface IPool {
      * @notice Drop a reserve
      * @dev Only callable by the PoolConfigurator contract
      * @param asset The address of the underlying asset of the reserve
-     **/
+     */
     function dropReserve(address asset) external;
 
     /**
@@ -554,7 +559,7 @@ interface IPool {
      * @dev Only callable by the PoolConfigurator contract
      * @param asset The address of the underlying asset of the reserve
      * @param rateStrategyAddress The address of the interest rate strategy contract
-     **/
+     */
     function setReserveInterestRateStrategyAddress(
         address asset,
         address rateStrategyAddress
@@ -565,7 +570,7 @@ interface IPool {
      * @dev Only callable by the PoolConfigurator contract
      * @param asset The address of the underlying asset of the reserve
      * @param configuration The new configuration bitmap
-     **/
+     */
     function setConfiguration(
         address asset,
         DataTypes.ReserveConfigurationMap calldata configuration
@@ -575,7 +580,7 @@ interface IPool {
      * @notice Returns the configuration of the reserve
      * @param asset The address of the underlying asset of the reserve
      * @return The configuration of the reserve
-     **/
+     */
     function getConfiguration(
         address asset
     ) external view returns (DataTypes.ReserveConfigurationMap memory);
@@ -584,13 +589,13 @@ interface IPool {
      * @notice Returns the configuration of the user across all the reserves
      * @param user The user address
      * @return The configuration of the user
-     **/
+     */
     function getUserConfiguration(
         address user
     ) external view returns (DataTypes.UserConfigurationMap memory);
 
     /**
-     * @notice Returns the normalized income normalized income of the reserve
+     * @notice Returns the normalized income of the reserve
      * @param asset The address of the underlying asset of the reserve
      * @return The reserve's normalized income
      */
@@ -600,6 +605,13 @@ interface IPool {
 
     /**
      * @notice Returns the normalized variable debt per unit of asset
+     * @dev WARNING: This function is intended to be used primarily by the protocol itself to get a
+     * "dynamic" variable index based on time, current stored index and virtual rate at the current
+     * moment (approx. a borrower would get if opening a position). This means that is always used in
+     * combination with variable debt supply/balances.
+     * If using this function externally, consider that is possible to have an increasing normalized
+     * variable debt that is not equivalent to how the variable debt index would be updated in storage
+     * (e.g. only updates with non-zero variable debt supply)
      * @param asset The address of the underlying asset of the reserve
      * @return The reserve normalized variable debt
      */
@@ -611,7 +623,7 @@ interface IPool {
      * @notice Returns the state and configuration of the reserve
      * @param asset The address of the underlying asset of the reserve
      * @return The state and configuration data of the reserve
-     **/
+     */
     function getReserveData(
         address asset
     ) external view returns (DataTypes.ReserveData memory);
@@ -639,20 +651,20 @@ interface IPool {
      * @notice Returns the list of the underlying assets of all the initialized reserves
      * @dev It does not include dropped reserves
      * @return The addresses of the underlying assets of the initialized reserves
-     **/
+     */
     function getReservesList() external view returns (address[] memory);
 
     /**
      * @notice Returns the address of the underlying asset of a reserve by the reserve id as stored in the DataTypes.ReserveData struct
      * @param id The id of the reserve as stored in the DataTypes.ReserveData struct
      * @return The address of the reserve associated with id
-     **/
+     */
     function getReserveAddressById(uint16 id) external view returns (address);
 
     /**
      * @notice Returns the PoolAddressesProvider connected to this contract
      * @return The address of the PoolAddressesProvider
-     **/
+     */
     function ADDRESSES_PROVIDER()
         external
         view
@@ -756,7 +768,7 @@ interface IPool {
     /**
      * @notice Mints the assets accrued through the reserve factor to the treasury in the form of aTokens
      * @param assets The list of reserves for which the minting needs to be executed
-     **/
+     */
     function mintToTreasury(address[] calldata assets) external;
 
     /**
@@ -778,7 +790,7 @@ interface IPool {
      *   is a different wallet
      * @param referralCode Code used to register the integrator originating the operation, for potential rewards.
      *   0 if the action is executed directly by the user, without any middle-man
-     **/
+     */
     function deposit(
         address asset,
         uint256 amount,
diff --git a/downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol b/downloads/metis/L2_ENCODER/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
similarity index 98%
rename from downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
rename to downloads/metis/L2_ENCODER/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
index 7771561..957e507 100644
--- a/downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
+++ b/downloads/metis/L2_ENCODER/@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol
@@ -1,11 +1,11 @@
 // SPDX-License-Identifier: AGPL-3.0
-pragma solidity 0.8.10;
+pragma solidity ^0.8.0;
 
 /**
  * @title IPoolAddressesProvider
  * @author Aave
  * @notice Defines the basic interface for a Pool Addresses Provider.
- **/
+ */
 interface IPoolAddressesProvider {
     /**
      * @dev Emitted when the market identifier is updated.
@@ -122,7 +122,7 @@ interface IPoolAddressesProvider {
     /**
      * @notice Returns the id of the Aave market to which this contract points to.
      * @return The market id
-     **/
+     */
     function getMarketId() external view returns (string memory);
 
     /**
@@ -167,27 +167,27 @@ interface IPoolAddressesProvider {
     /**
      * @notice Returns the address of the Pool proxy.
      * @return The Pool proxy address
-     **/
+     */
     function getPool() external view returns (address);
 
     /**
      * @notice Updates the implementation of the Pool, or creates a proxy
      * setting the new `pool` implementation when the function is called for the first time.
      * @param newPoolImpl The new Pool implementation
-     **/
+     */
     function setPoolImpl(address newPoolImpl) external;
 
     /**
      * @notice Returns the address of the PoolConfigurator proxy.
      * @return The PoolConfigurator proxy address
-     **/
+     */
     function getPoolConfigurator() external view returns (address);
 
     /**
      * @notice Updates the implementation of the PoolConfigurator, or creates a proxy
      * setting the new `PoolConfigurator` implementation when the function is called for the first time.
      * @param newPoolConfiguratorImpl The new PoolConfigurator implementation
-     **/
+     */
     function setPoolConfiguratorImpl(address newPoolConfiguratorImpl) external;
 
     /**
@@ -211,7 +211,7 @@ interface IPoolAddressesProvider {
     /**
      * @notice Updates the address of the ACL manager.
      * @param newAclManager The address of the new ACLManager
-     **/
+     */
     function setACLManager(address newAclManager) external;
 
     /**
@@ -235,7 +235,7 @@ interface IPoolAddressesProvider {
     /**
      * @notice Updates the address of the price oracle sentinel.
      * @param newPriceOracleSentinel The address of the new PriceOracleSentinel
-     **/
+     */
     function setPriceOracleSentinel(address newPriceOracleSentinel) external;
 
     /**
@@ -247,6 +247,6 @@ interface IPoolAddressesProvider {
     /**
      * @notice Updates the address of the data provider.
      * @param newDataProvider The address of the new DataProvider
-     **/
+     */
     function setPoolDataProvider(address newDataProvider) external;
 }
diff --git a/downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/misc/L2Encoder.sol b/downloads/metis/L2_ENCODER/@aave/core-v3/contracts/misc/L2Encoder.sol
similarity index 100%
rename from downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/misc/L2Encoder.sol
rename to downloads/metis/L2_ENCODER/@aave/core-v3/contracts/misc/L2Encoder.sol
diff --git a/downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol b/downloads/metis/L2_ENCODER/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
similarity index 99%
rename from downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
rename to downloads/metis/L2_ENCODER/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
index 2a6cff9..0c2dcba 100644
--- a/downloads/optimism/L2_ENCODER/L2Encoder/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
+++ b/downloads/metis/L2_ENCODER/@aave/core-v3/contracts/protocol/libraries/types/DataTypes.sol
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: BUSL-1.1
-pragma solidity 0.8.10;
+pragma solidity ^0.8.0;
 
 library DataTypes {
     struct ReserveData {
```
