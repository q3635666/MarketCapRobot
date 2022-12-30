// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract WhiteList {

    struct UserMessage{
        bool Whitelist;
        bool Owner;
    }
    
    mapping (address => UserMessage)  User;
    modifier onlyOwner(){
        require(User[msg.sender].Owner == true,"not owner");
        _;
    }
    function setWhitelist(address account,bool isWhitelist) public onlyOwner{
        User[account].Whitelist = isWhitelist;
    }
    function setOwner(address account,bool isOwner) public onlyOwner{
        User[account].Owner = isOwner;

    }
    function getWhitelist(address account) public view returns(bool){
        return User[account].Whitelist;
    }
}
