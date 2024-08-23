# SavingsAccount Smart Contract

![image](https://github.com/user-attachments/assets/3464db8e-5e06-42d6-8998-c425041a0783)

## Vision
The **SavingsAccount** smart contract is designed to provide a decentralized and transparent solution for managing personal savings on the Ethereum blockchain. The contract allows users to deposit and withdraw Ether, automatically calculating interest based on the deposited amount and the time the funds have been stored. By using this contract, users can benefit from a trustless and secure way to grow their savings over time without relying on traditional financial institutions.

## Flowchart
```plaintext
+----------------------------------------------------+
|                    SavingsAccount                  |
+----------------------------------------------------+
|                      Variables                     |
| - owner: address                                   |
| - interestRate: uint                               |
| - balances: mapping(address => uint)               |
| - lastDepositTime: mapping(address => uint)        |
+----------------------------------------------------+
|                      Functions                     |
| - deposit()                                        |
| - withdraw(uint amount)                            |
| - calculateInterest(address user)                  |
| - checkBalance()                                   |
| - setInterestRate(uint _interestRate)              |
+----------------------------------------------------+

+----------------------------------------------------+
|                        User                        |
+----------------------------------------------------+
|                      Actions                       |
| - Deposit Ether                                    |
| - Withdraw Ether                                   |
| - Check Balance                                    |
+----------------------------------------------------+

                    |
                    v

+----------------------------------------------------+
|                Interest Calculation                |
+----------------------------------------------------+
| Interest is calculated based on:                   |
| - Deposit amount                                   |
| - Time elapsed since last deposit                  |
| - Annual interest rate                             |
+----------------------------------------------------+

                    |
                    v

+----------------------------------------------------+
|                    Payout                          |
+----------------------------------------------------+
| User withdraws Ether with accrued interest or      |
| leaves it to continue earning more interest.       |
+----------------------------------------------------+
```

## Smart Contract Address
The contract address on the Ethereum mainnet will be provided after deployment. Ensure you verify the contract address before interacting to avoid scams. For the purpose of testing on a local Ethereum environment or testnet, deploy the contract and use the generated address.

## Deployment Instructions
To deploy the SavingsAccount contract:
1. Install the Solidity compiler and a suitable Ethereum development environment (e.g., Remix, Truffle, or Hardhat).
2. Copy the Solidity code into your development environment.
3. Compile the contract.
4. Deploy the contract by passing the desired initial interest rate (in percentage) to the constructor.
5. The contract owner can later adjust the interest rate using the `setInterestRate` function.

## Future Scope
- **Token Integration:** Allow deposits in ERC-20 tokens instead of just Ether, expanding the use case for token holders.
- **Interest Rate Dynamics:** Implement dynamic interest rates that adjust based on market conditions or user behavior.
- **Staking Rewards:** Introduce staking rewards for users who maintain their balances above a certain threshold for a specified duration.
- **Governance Mechanism:** Develop a decentralized governance model where users can vote on interest rate changes and other contract parameters.
- **Multi-Chain Support:** Expand the contract’s functionality to other blockchains beyond Ethereum, such as Binance Smart Chain, Polygon, or others.

## Contract Information
-**Contract_address:** 0x24f5c3033f060ac5b5ce60082121b81d76d3bb07

![image](https://github.com/user-attachments/assets/bfb77f5a-6420-4850-95da-5bf5c59cf86c)

-**Networks:** Edu-Chain


## Contact Information
For further inquiries or support, feel free to reach out:
- **Name:** Kangkan Krishna Kalita
- **Email:** KangkankrishnaK@gmail.com
- **Github:** https://github.com/Kangkan-krishna-kalita
- **LinkedIn:** https://www.linkedin.com/in/kangkan-krishna-kalita-854734313/



