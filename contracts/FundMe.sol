//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract FundMe {

    uint256 public minimumUsd = 5;
    
    function fund() public payable {
        //allow users to send $
        //have minimum amount sent
        //how to send eth - make the function payable
        //msg.value - message sent with the wei
        require(msg.value > 1e18, "didn't send enough eth");
        
    }
}