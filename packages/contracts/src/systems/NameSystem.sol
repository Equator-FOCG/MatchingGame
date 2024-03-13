// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import { System } from "@latticexyz/world/src/System.sol";
import { Name, NameTableId } from "../codegen/index.sol";
import { addressToEntity } from "../libraries/LibUtils.sol";

contract NameSystem is System {
  function setName(string memory name) public {
    bytes32 entityId = addressToEntity(_msgSender());
    Name.set(entityId, name);
  }

  function getName() public view returns (string memory) {
    bytes32 entityId = addressToEntity(_msgSender());
    return Name.get(entityId);
  }
}
