pragma solidity ^0.5.6;

import "./klaytn-contracts/token/KIP37/KIP37.sol";
import "./klaytn-contracts/token/KIP37/KIP37Mintable.sol";
import "./klaytn-contracts/token/KIP37/KIP37Burnable.sol";
import "./klaytn-contracts/token/KIP37/KIP37Pausable.sol";
import "./klaytn-contracts/ownership/Ownable.sol";

contract Imagine is Ownable, KIP37, KIP37Mintable, KIP37Burnable, KIP37Pausable {

    event SetURI(string uri);

    constructor() public KIP37("") {}

    function setURI(string calldata uri) external onlyOwner {
        _setURI(uri);
        emit SetURI(uri);
    }
}
