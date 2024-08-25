// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables to store the details about the token
    string public tokenName = "MyToken";
    string public tokenAbbrv = "MTK";
    uint256 public totalSupply;

    // Mapping to store the balance of each address
    mapping(address => uint256) public balances;

    // Mint function to create new tokens
    function mint(address _to, uint256 _amount) public {
        totalSupply += _amount;
        balances[_to] += _amount;
    }

    // Burn function to destroy tokens
    function burn(address _from, uint256 _amount) public {
        require(balances[_from] >= _amount, "Not enough balance to burn");
        totalSupply -= _amount;
        balances[_from] -= _amount;
    }
}
