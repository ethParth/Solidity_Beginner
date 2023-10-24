// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    //token name

    string public name;

    //token symbol

    string public symbol;

    //token totalSupply

    uint256 public totalSupply;

    //balances mapping

    mapping (address => uint256) public balances;

    //mint function 

    function mint(address _to, uint256 _amount) public {

        balances[_to] += _amount;
        totalSupply += _amount;
    }

    //burn function 

    function burn(address _from, uint256 _amount) public{

        require (balances[_from] >= _amount, "You don't have enough balance");
        balances[_from] -= _amount;
        totalSupply -= _amount;

    } 

}
