# Solidity Contract Formal Verification Using Dafny

This repository demonstrates how to verify a simple Solidity function that calculates the balance of a user after multiple deposits using the Dafny formal verification tool. The goal is to ensure that the function behaves correctly, such as ensuring that the balance can only increase after a deposit.

## Table of Contents
- [Overview](#overview)
- [Setup Instructions](#setup-instructions)
- [Steps to Verify](#steps-to-verify)
- [Files in the Repository](#files-in-the-repository)
- [Acknowledgments](#acknowledgments)

---

## Overview

This project demonstrates the use of formal verification to mathematically prove the correctness of a Solidity function. Specifically, the focus is on a function that updates a user's balance after each deposit, with formal properties specifying that the balance can only increase. The verification is done using Dafny, a formal verification tool that ensures the contract meets its intended behavior.

---

## Setup Instructions

1. Clone this repository:
   ```bash
   git clone https://github.com/Cipherkrish69x/solidity-formal-verification-dafny.git
   cd solidity-formal-verification-dafny
   ```

2. Open Remix IDE by navigating to [Remix Ethereum IDE](https://remix.ethereum.org/).

3. Upload the following files to Remix:
   - **UserBalance.sol**: The Solidity smart contract file.
   - **UserBalanceSpec.dvy**: The Dafny specification file.

---

## Steps to Verify

1. **Create the Solidity Contract**:
   - In Remix IDE, create a Solidity contract that implements a function for accepting deposits.
   - The contract should have a `mapping` to track user balances.
   - Implement a `deposit` function that accepts an amount and updates the user's balance.

2. **Create the Dafny Specification**:
   - Write a Dafny specification to formally verify the Solidity contract.
   - The specification should define the properties that need to hold true, such as ensuring that the balance can only increase after a deposit.

3. **Connect the Solidity Contract and Dafny Specification**:
   - In Remix IDE, open the **Contracts** panel and add both the Solidity contract and Dafny specification files.
   - Connect the files by ensuring the Solidity contract and Dafny specification are properly linked for verification.

4. **Run the Verification**:
   - Click the **Verify** button in Remix to trigger the Dafny verification process.
   - Dafny will check the contract against the specified properties and confirm whether it meets the required conditions.

5. **Interpret the Verification Results**:
   - If the verification is successful, you should see a confirmation message indicating that the contract behaves as expected.
   - If the verification fails, review the specification to ensure that all conditions are correctly defined.

---

## Files in the Repository

- `UserBalance.sol`: The Solidity contract implementing the deposit functionality.
- `UserBalanceSpec.dvy`: The Dafny specification file for verifying the Solidity contract.
- `README.md`: Documentation for setting up and verifying the contract.

---

# Output After Successful Verification

Verification successful for contract UserBalance.sol

Properties:
- The balance can only increase after a deposit. PASSED
- The balance remains non-negative. PASSED

No errors found.

# Output After Failed Verification

Verification failed for contract UserBalance.sol

Properties:
- The balance can only increase after a deposit. FAILED
- The balance remains non-negative. PASSED

Errors:
- Property violation: The balance was not properly updated in certain cases 

---

## Acknowledgments

- **Alla Krishna Vamsi Reddy**: Creator of this project.
- Special thanks to Remix IDE and Dafny for providing the tools necessary for writing and verifying smart contracts.

---
