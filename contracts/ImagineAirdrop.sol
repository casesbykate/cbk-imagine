pragma solidity ^0.5.6;

import "./klaytn-contracts/token/KIP37/KIP37.sol";

contract ImagineAirdrop {

    KIP37 public items;

    constructor(KIP37 _items) public {
        items = _items;
    }

    function airdrop(uint256 id, address[] calldata tos) external {
        for (uint256 i = 0; i < tos.length; i += 1) {
            items.safeTransferFrom(msg.sender, tos[i], id, 1, "");
        }
    }
}
