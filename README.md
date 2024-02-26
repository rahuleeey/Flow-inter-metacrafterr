# Flow Fungible Token Project

Welcome to the repository for the Flow Fungible Token Project. This repository is dedicated to the implementation of a comprehensive Fungible Token contract on the Flow blockchain. It includes a suite of transactions and scripts, organized into different sections, addressing various aspects of token management and interactions.

## Core Contract Implementation

The core contract, **FlowToken**, includes:

- An owner-controlled minting process.
- A Vault resource for maintaining token balances.
- An array of transactions and scripts for robust token management.

The deposit function within the Vault resource is highlighted for secure token transfer and preventing double-counting.

## Fundamental Transactions and Scripts

### Transactions

- **MINT**: Facilitates the minting of tokens to designated recipients.
- **SETUP**: Streamlines the initialization of a user's vault in account storage.
- **TRANSFER**: Enables users to transfer tokens to different addresses.

### Scripts

- **READ BALANCE**: Retrieves the token balance in a user’s vault.
- **SETUP VALIDATION**: Confirms correct vault setup.
- **TOTAL SUPPLY CHECK**: Reports the total circulating supply of tokens.

## Transaction and Script Enhancements

Improvements include remedying improperly set up vaults in the SETUP transaction and enhancing the READ BALANCE script for compatibility with non-standard vault setups.

## Key Features

- Resource identifiers for verifying token types.
- Resource capabilities for vault authenticity validation.

## Contract and Transaction Augmentation

### Admin Capabilities

The Admin is empowered to withdraw tokens from user vaults and deposit equivalent $FLOW tokens.

### New Transaction

- **Admin Withdraw and Deposit**: An Admin-exclusive transaction for token management.

## Advanced Scripting

### Scripts

- **BALANCE SUMMARY**: Presents a summary of a user’s $FLOW and custom token vault balances.
- **VAULT OVERVIEW**: Provides a detailed overview of all recognized Fungible Token vaults in a user’s storage.

## Swap Contract Integration

The **Swap Contract** facilitates users to exchange $FLOW tokens for custom tokens, based on the duration since their last exchange. It utilizes a custom identity resource and the user's $FLOW vault reference to authenticate user identity and facilitate secure token swaps.

## Project Conclusion

This repository exemplifies a comprehensive Fungible Token contract deployment on the Flow blockchain. It systematically presents functionalities, including token minting, vault setup, token transfer, and token swapping, ensuring enhanced comprehensibility and ease of navigation.
