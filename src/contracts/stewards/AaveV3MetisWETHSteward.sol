// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {BaseV3MetisWithPoolAdmin, IEngine, EngineFlags, Rates} from './BaseV3MetisWithPoolAdmin.sol';
import {AaveV3MetisAssets} from 'aave-address-book/AaveV3Metis.sol';

/**
 * @notice AaveV3MetisWETHSteward
 * @dev Listing Steward for WETH on Aave v3 Metis.
 *  - For context, an Aave Steward is a smart contract that receives the appropriate permissions
 *    from the Aave ACLManager -> does an action (in this case listing an asset) -> renounces to all permissions.
 * @author BGD Labs
 */
contract AaveV3MetisWETHSteward is BaseV3MetisWithPoolAdmin {
  address public constant WETH_USD = 0x3BBe70e2F96c87aEce7F67A2b0178052f62E37fE;

  function newListings() public pure override returns (IEngine.Listing[] memory) {
    IEngine.Listing[] memory listings = new IEngine.Listing[](1);

    listings[0] = IEngine.Listing({
      asset: AaveV3MetisAssets.WETH_UNDERLYING,
      assetSymbol: 'WETH',
      priceFeed: WETH_USD,
      rateStrategyParams: Rates.RateStrategyParams({
        optimalUsageRatio: _bpsToRay(80_00),
        baseVariableBorrowRate: _bpsToRay(1_00),
        variableRateSlope1: _bpsToRay(3_80),
        variableRateSlope2: _bpsToRay(80_00),
        stableRateSlope1: _bpsToRay(3_80),
        stableRateSlope2: _bpsToRay(80_00),
        baseStableRateOffset: _bpsToRay(3_00),
        stableRateExcessOffset: _bpsToRay(8_00),
        optimalStableToTotalDebtRatio: _bpsToRay(20_00)
      }),
      enabledToBorrow: EngineFlags.ENABLED,
      stableRateModeEnabled: EngineFlags.DISABLED,
      borrowableInIsolation: EngineFlags.DISABLED,
      withSiloedBorrowing: EngineFlags.DISABLED,
      flashloanable: EngineFlags.ENABLED,
      ltv: 80_00,
      liqThreshold: 82_50,
      liqBonus: 7_50,
      reserveFactor: 15_00,
      supplyCap: 50,
      borrowCap: 30,
      debtCeiling: 0,
      liqProtocolFee: 10_00,
      eModeCategory: 0
    });

    return listings;
  }
}
