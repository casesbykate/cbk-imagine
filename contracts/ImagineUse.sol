pragma solidity ^0.5.6;

import "./Imagine.sol";

contract ImagineUse {

    Imagine public items;
    mapping(uint256 => bool) public used;

    constructor(Imagine _items) public {
        items = _items;
    }

    function use(uint256 id) external {
        require(used[id] != true);
        items.burn(msg.sender, 0, 2);
        items.burn(msg.sender, 1, 1);
        items.burn(msg.sender, 2, 1);
        used[id] = true;
    }
}
