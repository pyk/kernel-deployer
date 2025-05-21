// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { Test } from "forge-std/Test.sol";
import { EntryPointDeployer } from "../lib/entrypoint-deployer/src/Deployer.sol";
import { ValidationId } from "../src/types/Types.sol";
import { KernelDeployer } from "../src/Deployer.sol";
import { ValidatorLib } from "../src/libraries/ValidatorLib.sol";
import { IValidator, IPolicy, IHook, ISigner } from "../src/interfaces/IERC7579Module.sol";

contract KernelTest is Test, EntryPointDeployer, KernelDeployer {
    function setUp() external {
        deployEntrypoint();
        deployKernel();
    }

    function getInitData(address validator, bytes memory initData) public view override returns (bytes memory _init) {
        ValidationId rootValidator = ValidatorLib.validatorToIdentifier(IValidator(validator));

        _init = abi.encodeCall(
            IKernel.initialize, (rootValidator, IHook(address(hookMultiPlexer)), initData, hex"00", new bytes[](0))
        );
    }

    function testCreateAccount() external {
        // data
        bytes memory data = "";
    }
}
