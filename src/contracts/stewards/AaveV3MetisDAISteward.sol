// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BaseV3MetisWithPoolAdmin, IEngine, EngineFlags, Rates} from './BaseV3MetisWithPoolAdmin.sol';
import {AaveV3MetisAssets} from 'aave-address-book/AaveV3Metis.sol';

/**
 * @notice AaveV3MetisDAISteward
 * @dev Listing Steward for DAI on Aave v3 Metis.
 *  - For context, an Aave Steward is a smart contract that receives the appropriate permissions
 *    from the Aave ACLManager -> does an action (in this case listing an asset) -> renounces to all permissions.
 * @author BGD Labs
 */
contract AaveV3MetisDAISteward is BaseV3MetisWithPoolAdmin {
  address public constant mDAI_USD = 0xe0351cAAE70B5AdBD0107cD5331AD1D79c4c1CA1;

  function newListings() public pure override returns (IEngine.Listing[] memory) {
    IEngine.Listing[] memory listings = new IEngine.Listing[](1);

    listings[0] = IEngine.Listing({
      asset: AaveV3MetisAssets.mDAI_UNDERLYING,
      assetSymbol: 'mDAI',
      priceFeed: mDAI_USD,
      rateStrategyParams: Rates.RateStrategyParams({
        optimalUsageRatio: _bpsToRay(80_00),
        baseVariableBorrowRate: 0,
        variableRateSlope1: _bpsToRay(7_00),
        variableRateSlope2: _bpsToRay(75_00),
        stableRateSlope1: _bpsToRay(50),
        stableRateSlope2: _bpsToRay(75_00),
        baseStableRateOffset: _bpsToRay(1_00),
        stableRateExcessOffset: _bpsToRay(8_00),
        optimalStableToTotalDebtRatio: _bpsToRay(20_00)
      }),
      enabledToBorrow: EngineFlags.ENABLED,
      stableRateModeEnabled: EngineFlags.DISABLED,
      borrowableInIsolation: EngineFlags.DISABLED,
      withSiloedBorrowing: EngineFlags.DISABLED,
      flashloanable: EngineFlags.ENABLED,
      ltv: 75_00,
      liqThreshold: 80_00,
      liqBonus: 5_00,
      reserveFactor: 10_00,
      supplyCap: 950_000,
      borrowCap: 950_000,
      debtCeiling: 0,
      liqProtocolFee: 10_00,
      eModeCategory: 0
    });

    return listings;
  }
}
