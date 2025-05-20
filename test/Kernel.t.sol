// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { Test } from "forge-std/Test.sol";
import { EntryPointDeployer } from "../lib/entrypoint-deployer/src/Deployer.sol";

import { KernelDeployer } from "../src/Deployer.sol";

contract KernelTest is Test, EntryPointDeployer, KernelDeployer {
    function setUp() external {
        deployEntrypoint();
        deployKernel();
    }

    function testCreateAccount() external {
        // data
        bytes memory data = "";
    }
}
