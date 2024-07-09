# ZK faucet Distributor

This project provides a solution for distributing zkSync testnet tokens to users who hold a specific NFT (for example hackathon). The system leverages a paymaster to cover transaction fees for users, ensuring a seamless and cost-free experience for eligible users.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Security Considerations](#security-considerations)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This project aims to streamline the process of distributing testnet tokens on the zkSync blockchain. By requiring users to hold a specific NFT (for example hackathon), we ensure fair distribution and prevent abuse. The integration of a paymaster covers transaction fees, enhancing the user experience.

## Features

- Verify NFT ownership before allowing token claims.
- Use a paymaster to cover transaction fees.
- Prevent multiple claims from the same user.
- Simple and user-friendly claiming process.

## Requirements

- Node.js
- Hardhat
- zkSync Testnet Account
- Hackathon NFT

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/zksync-testnet-token-distributor.git
    cd zksync-testnet-token-distributor
    ```

2. Install dependencies:
    ```bash
    npm install
    ```

## Usage

1. Deploy the smart contract:

    ```bash
    npx hardhat run scripts/deploy.js --network zksyncTestnet
    ```

2. Configure the paymaster and NFT contract address in the deployed smart contract.

3. Users can connect their wallets and claim tokens through the provided UI (details on the UI implementation are below).

## Security Considerations

- Regularly audit your smart contract for vulnerabilities.
- Ensure proper handling of edge cases, such as users transferring their NFTs after claiming tokens.
- Monitor and update the contract as needed to maintain security and functionality.

## Contributing

We welcome contributions to enhance the project! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch: `git checkout -b feature-branch`.
3. Make your changes and commit them: `git commit -m 'Add some feature'`.
4. Push to the branch: `git push origin feature-branch`.
5. Submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Feel free to customize this README to better fit your project's details and specific needs.