// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

interface IKernelFactory {
    function createAccount(bytes memory data, bytes32 salt) external returns (address);
    function getAddress(bytes memory data, bytes32 salt) external view returns (address);
    function implementation() external view returns (address);
}
