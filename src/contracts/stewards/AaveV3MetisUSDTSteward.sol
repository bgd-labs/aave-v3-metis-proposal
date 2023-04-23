// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BaseV3MetisWithPoolAdmin, IEngine, EngineFlags, Rates} from './BaseV3MetisWithPoolAdmin.sol';
import {AaveV3MetisAssets, AaveV3MetisPriceFeeds} from '../AaveV3MetisConfigs.sol/';
/**
 * @notice AaveV3MetisUSDTSteward
 * @dev Listing Steward for USDT on Aave v3 Metis.
 *  - For context, an Aave Steward is a smart contract that receives the appropriate permissions
 *    from the Aave ACLManager -> does an action (in this case listing an asset) -> renounces to all permissions.
 * @author BGD Labs
 */
contract AaveV3MetisUSDTSteward is BaseV3MetisWithPoolAdmin {
  function newListings() public pure override returns (IEngine.Listing[] memory) {
    IEngine.Listing[] memory listings = new IEngine.Listing[](1);

    // TODO: contains random values, fill in the real values from the forum
    listings[0] = IEngine.Listing({
      asset: AaveV3MetisAssets.USDT,
      assetSymbol: 'USDT',
      priceFeed: AaveV3MetisPriceFeeds.USDT_USD,
      rateStrategyParams: Rates.RateStrategyParams({
        optimalUsageRatio: 0,
        baseVariableBorrowRate: 0,
        variableRateSlope1: 0,
        variableRateSlope2: 0,
        stableRateSlope1: 0,
        stableRateSlope2: 0,
        baseStableRateOffset: 0,
        stableRateExcessOffset: 0,
        optimalStableToTotalDebtRatio: 0
      }),
      enabledToBorrow: EngineFlags.ENABLED,
      stableRateModeEnabled: EngineFlags.DISABLED,
      borrowableInIsolation: EngineFlags.ENABLED,
      withSiloedBorrowing: EngineFlags.DISABLED,
      flashloanable: EngineFlags.ENABLED,
      ltv: 75_00,
      liqThreshold: 80_00,
      liqBonus: 5_00,
      reserveFactor: 10_00,
      supplyCap: 1_400_000,
      borrowCap: 1_400_000,
      debtCeiling: 7_500_000,
      liqProtocolFee: 10_00,
      eModeCategory: 0
    });

    return listings;
  }
}
