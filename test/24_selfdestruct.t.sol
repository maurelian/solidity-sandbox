// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract Dies {
  function die(address payable recipient) public {
    selfdestruct(recipient);
  }

  function exists() external returns(bool) {
    return true;
  }
}

// The question is, what happens during a selfdestruct. Specifically:
// I know that the code is still present until the end of the tx,
// but does the balance move immediately?
contract Test24 is Test {
  Dies dies = new Dies();
  address payable other = payable(address(0x9999));

  function setUp() external {
    vm.deal(address(dies), 0xFFFF);
  }

  function test_selfdestruct_toSelf() external {
    uint balanceBefore = address(dies).balance;

    // Have the target selfdestruct the balance to itself
    dies.die(payable(address(dies)));

    // It still exists...
    assert(dies.exists());
    // And the balance is now 0
    assertEq(address(dies).balance, 0);
    // You can call selfdestruct again and send to a different recipient...
    dies.die(other);
    // But the balance was already zero'd out, so 'other' has no balance.
    assertEq(other.balance, 0);
  }

  function test_selfdestruct_toOther() external {
    uint balanceBefore = address(dies).balance;
    dies.die(other);

    // This time, the balance has been moved immediately!
    assertEq(other.balance, balanceBefore);
    console.log(other.balance);
  }
}
