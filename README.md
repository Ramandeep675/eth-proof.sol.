MyToken Smart Contract
The MyToken smart contract is a simple implementation of an ERC-20-like token on the Ethereum blockchain. Below is a brief overview of its components:

Key Features:
Token Name & Symbol: The token is named "MyToken" and has the symbol "MTK".
Total Supply: The total supply of tokens is stored and updated as new tokens are minted or burned.
Balances: The contract keeps track of each address's token balance using a mapping.
Functions:
Mint: The mint function allows the creation of new tokens. When called, it increases the totalSupply by the specified amount and adds the same amount to the recipient's balance.

solidity
Copy code
function mint(address _to, uint256 _amount) public
Burn: The burn function allows the destruction of tokens. It decreases the totalSupply by the specified amount and subtracts the same amount from the sender's balance. The function ensures that the sender has enough tokens to burn.

solidity
Copy code
function burn(address _from, uint256 _amount) public
Usage:
Minting Tokens: To mint new tokens, call the mint function with the recipient's address and the amount of tokens to create.
Burning Tokens: To burn tokens, call the burn function with the address holding the tokens and the amount to be burned.
