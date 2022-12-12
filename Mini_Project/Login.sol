// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
/**
 * @title companydetails
 * @dev Store & retrieve value in a variable
 */

 contract providerlogin {
       mapping(string => provider) internal providermap;
    struct provider{

        string Username;
        uint128 M_ID;
        string Password;  

    }

    provider internal p;

    address internal owner;

constructor(){

    owner = msg.sender;

}

// modifier isadmin(){
//    require(admin == msg.sender,"Only admin can access it");
//    _;

//}

function login(string memory _Username, uint128 _MID, string memory _Password) public {
    p.M_ID = _MID;
    p.Password = _Password;

    providermap[_Username] = p;

}

}