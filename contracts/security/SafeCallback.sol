// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SafeCallback {

    address constant NON_ZERO_ADDRESS = 0xFFfFfFffFFfffFFfFFfFFFFFffFFFffffFfFFFfF;
    address private _callbackAddress;

    modifier onlyCallback {
        require(msg.sender == _callbackAddress, "Callback from this address is not allowed");
        _callbackAddress = NON_ZERO_ADDRESS;
        _;
    }

    constructor() {
        _callbackAddress = NON_ZERO_ADDRESS;
    }

    function _allowCallback(address callbackAddress) internal {
        _callbackAddress = callbackAddress;
    }

    function _restrictCallbacks() internal {
        _callbackAddress = NON_ZERO_ADDRESS;
    }

    function _afterCallback() internal view {
        require (_callbackAddress == NON_ZERO_ADDRESS, "Callback did not happen");
    }

}