// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title exam
 * @dev Store value in a variable
 */

 contract Student {
     int256 rollnumber;
     string name;
     string department;
     int256 mark1;
     int256 mark2;
     int256 mark3;
     int256 total;
     int256 avg;

    /**
    * @dev Store value in variable 
    * @param _rollnumber value to store
    * @param _name value to store
    * @param _total value to store
    * @param _department value to store
    * @param _mark1 value to store
    * @param _mark2 value to store
    * @param _mark3 value to store
    * @param _avg value to store
    */

    function store(int256 _rollnumber, string memory _name, string memory _department, int256 _mark1,int256 _mark2,int256 _mark3,int256 _total,int256 _avg) public {
        rollnumber = _rollnumber;
        name = _name;
        department = _department;
        mark1 = _mark1;
        mark2 = _mark2;
        mark3 = _mark3;
    }
    function addition() public {
        total = mark1 + mark2 + mark3;
        avg = total/3;
    }

    function retrieve() public view returns(int256, int256, int256, string memory) {
        return (rollnumber,total, avg,name);
    }
 }