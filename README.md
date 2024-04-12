# Custom zK

This repo can be used to create your own custom zkproof, using circom. To deploy your verifier contract on chain and get the proof.  

## Description

This repository provides a framework for creating custom Zero-Knowledge Proofs (ZKProof) using Circom. With this tool, you can easily design and deploy your own ZKProof verifiers on the blockchain. The process involves crafting your proof using Circom, deploying the verifier contract on-chain, and obtaining the proof for secure validation. Streamline the creation of privacy-preserving solutions with this versatile and user-friendly ZKProof generation toolkit.

## Quick Start
Compile the verifierCircuit() circuit and verify it against a smart contract verifier

### Install
`npm i`

### Compile
`npx hardhat circom` 
This will generate the **out** file with circuit intermediaries and geneate the **MultiplierVerifier.sol** contract

### Prove and Deploy
`npx hardhat run scripts/deploy.ts --network <your_network_name>`
This script does 4 things  
1. Deploys the MultiplierVerifier.sol contract
2. Generates a proof from circuit intermediaries with `generateProof()`
3. Generates calldata with `generateCallData()`
4. Calls `verifyProof()` on the verifier contract with calldata

With two commands you can compile a ZKP, generate a proof, deploy a verifier, and verify the proof 🎉


## Author

Parth Verma

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
