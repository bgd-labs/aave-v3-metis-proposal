```diff
diff --git a/downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/bridges/BridgeExecutorBase.sol b/downloads/metis/BRIDGE_EXECUTOR/contracts/bridges/BridgeExecutorBase.sol
similarity index 99%
rename from downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/bridges/BridgeExecutorBase.sol
rename to downloads/metis/BRIDGE_EXECUTOR/contracts/bridges/BridgeExecutorBase.sol
index 5dd8792..2b6d55f 100644
--- a/downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/bridges/BridgeExecutorBase.sol
+++ b/downloads/metis/BRIDGE_EXECUTOR/contracts/bridges/BridgeExecutorBase.sol
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: AGPL-3.0
-pragma solidity 0.8.10;
+pragma solidity ^0.8.10;
 
 import {IExecutorBase} from "../interfaces/IExecutorBase.sol";
 
diff --git a/downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/bridges/L2BridgeExecutor.sol b/downloads/metis/BRIDGE_EXECUTOR/contracts/bridges/L2BridgeExecutor.sol
similarity index 99%
rename from downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/bridges/L2BridgeExecutor.sol
rename to downloads/metis/BRIDGE_EXECUTOR/contracts/bridges/L2BridgeExecutor.sol
index 957794a..6794e62 100644
--- a/downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/bridges/L2BridgeExecutor.sol
+++ b/downloads/metis/BRIDGE_EXECUTOR/contracts/bridges/L2BridgeExecutor.sol
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: AGPL-3.0
-pragma solidity 0.8.10;
+pragma solidity ^0.8.10;
 
 import {IL2BridgeExecutor} from "../interfaces/IL2BridgeExecutor.sol";
 import {BridgeExecutorBase} from "./BridgeExecutorBase.sol";
diff --git a/downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/bridges/OptimismBridgeExecutor.sol b/downloads/metis/BRIDGE_EXECUTOR/contracts/bridges/MetisBridgeExecutor.sol
similarity index 76%
rename from downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/bridges/OptimismBridgeExecutor.sol
rename to downloads/metis/BRIDGE_EXECUTOR/contracts/bridges/MetisBridgeExecutor.sol
index 7aad640..8e81ad5 100644
--- a/downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/bridges/OptimismBridgeExecutor.sol
+++ b/downloads/metis/BRIDGE_EXECUTOR/contracts/bridges/MetisBridgeExecutor.sol
@@ -1,18 +1,18 @@
-// SPDX-License-Identifier: AGPL-3.0
-pragma solidity 0.8.10;
+// SPDX-License-Identifier: MIT
+pragma solidity ^0.8.10;
 
 import {ICrossDomainMessenger} from "../dependencies/optimism/interfaces/ICrossDomainMessenger.sol";
 import {L2BridgeExecutor} from "./L2BridgeExecutor.sol";
 
 /**
- * @title OptimismBridgeExecutor
- * @author Aave
- * @notice Implementation of the Optimism Bridge Executor, able to receive cross-chain transactions from Ethereum
- * @dev Queuing an ActionsSet into this Executor can only be done by the Optimism L2 Cross Domain Messenger and having
+ * @title MetisBridgeExecutor
+ * @author BGD Labs
+ * @notice Implementation of the Metis Bridge Executor, able to receive cross-chain transactions from Ethereum
+ * @dev Queuing an ActionsSet into this Executor can only be done by the Metis L2 Cross Domain Messenger and having
  * the EthereumGovernanceExecutor as xDomainMessageSender
  */
-contract OptimismBridgeExecutor is L2BridgeExecutor {
-    // Address of the Optimism L2 Cross Domain Messenger, in charge of redirecting cross-chain transactions in L2
+contract MetisBridgeExecutor is L2BridgeExecutor {
+    // Address of the Metis L2 Cross Domain Messenger, in charge of redirecting cross-chain transactions in L2
     address public immutable OVM_L2_CROSS_DOMAIN_MESSENGER;
 
     /// @inheritdoc L2BridgeExecutor
@@ -29,7 +29,7 @@ contract OptimismBridgeExecutor is L2BridgeExecutor {
     /**
      * @dev Constructor
      *
-     * @param ovmL2CrossDomainMessenger The address of the Optimism L2CrossDomainMessenger
+     * @param ovmL2CrossDomainMessenger The address of the Metis L2CrossDomainMessenger
      * @param ethereumGovernanceExecutor The address of the EthereumGovernanceExecutor
      * @param delay The delay before which an actions set can be executed
      * @param gracePeriod The time period after a delay during which an actions set can be executed
diff --git a/downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/dependencies/optimism/interfaces/ICrossDomainMessenger.sol b/downloads/metis/BRIDGE_EXECUTOR/contracts/dependencies/optimism/interfaces/ICrossDomainMessenger.sol
similarity index 100%
rename from downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/dependencies/optimism/interfaces/ICrossDomainMessenger.sol
rename to downloads/metis/BRIDGE_EXECUTOR/contracts/dependencies/optimism/interfaces/ICrossDomainMessenger.sol
diff --git a/downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/interfaces/IExecutorBase.sol b/downloads/metis/BRIDGE_EXECUTOR/contracts/interfaces/IExecutorBase.sol
similarity index 99%
rename from downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/interfaces/IExecutorBase.sol
rename to downloads/metis/BRIDGE_EXECUTOR/contracts/interfaces/IExecutorBase.sol
index fdbe4f8..7bd9e01 100644
--- a/downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/interfaces/IExecutorBase.sol
+++ b/downloads/metis/BRIDGE_EXECUTOR/contracts/interfaces/IExecutorBase.sol
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: AGPL-3.0
-pragma solidity 0.8.10;
+pragma solidity ^0.8.10;
 
 /**
  * @title IExecutorBase
diff --git a/downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/interfaces/IL2BridgeExecutor.sol b/downloads/metis/BRIDGE_EXECUTOR/contracts/interfaces/IL2BridgeExecutor.sol
similarity index 94%
rename from downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/interfaces/IL2BridgeExecutor.sol
rename to downloads/metis/BRIDGE_EXECUTOR/contracts/interfaces/IL2BridgeExecutor.sol
index c2eb49c..7a4c650 100644
--- a/downloads/optimism/BRIDGE_EXECUTOR/OptimismBridgeExecutor/contracts/interfaces/IL2BridgeExecutor.sol
+++ b/downloads/metis/BRIDGE_EXECUTOR/contracts/interfaces/IL2BridgeExecutor.sol
@@ -1,12 +1,14 @@
 // SPDX-License-Identifier: AGPL-3.0
-pragma solidity 0.8.10;
+pragma solidity ^0.8.10;
+
+import {IExecutorBase} from "./IExecutorBase.sol";
 
 /**
  * @title IL2BridgeExecutorBase
  * @author Aave
  * @notice Defines the basic interface for the L2BridgeExecutor abstract contract
  */
-interface IL2BridgeExecutor {
+interface IL2BridgeExecutor is IExecutorBase {
     error UnauthorizedEthereumExecutor();
 
     /**
```
