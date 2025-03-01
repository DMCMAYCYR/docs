---
slug: /IDropERC20
title: IDropERC20
hide_title: true
displayed_sidebar: contracts
---

# IDropERC20

Thirdweb&#39;s &#39;Drop&#39; contracts are distribution mechanisms for tokens. The `DropERC20` contract is a distribution mechanism for ERC20 tokens. A contract admin (i.e. holder of `DEFAULT_ADMIN_ROLE`) can create claim conditions with non-overlapping time windows, and accounts can claim the tokens according to restrictions defined in the claim condition that is active at the time of the transaction.

## Methods

### allowance

```solidity
function allowance(address owner, address spender) external view returns (uint256)
```

_Returns the remaining number of tokens that `spender` will be allowed to spend on behalf of `owner` through {transferFrom}. This is zero by default. This value changes when {approve} or {transferFrom} are called._

#### Parameters

| Name    | Type    | Description |
| ------- | ------- | ----------- |
| owner   | address | undefined   |
| spender | address | undefined   |

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | uint256 | undefined   |

### approve

```solidity
function approve(address spender, uint256 amount) external nonpayable returns (bool)
```

_Sets `amount` as the allowance of `spender` over the caller&#39;s tokens. Returns a boolean value indicating whether the operation succeeded. IMPORTANT: Beware that changing an allowance with this method brings the risk that someone may use both the old and the new allowance by unfortunate transaction ordering. One possible solution to mitigate this race condition is to first reduce the spender&#39;s allowance to 0 and set the desired value afterwards: https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729 Emits an {Approval} event._

#### Parameters

| Name    | Type    | Description |
| ------- | ------- | ----------- |
| spender | address | undefined   |
| amount  | uint256 | undefined   |

#### Returns

| Name | Type | Description |
| ---- | ---- | ----------- |
| \_0  | bool | undefined   |

### balanceOf

```solidity
function balanceOf(address account) external view returns (uint256)
```

_Returns the amount of tokens owned by `account`._

#### Parameters

| Name    | Type    | Description |
| ------- | ------- | ----------- |
| account | address | undefined   |

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | uint256 | undefined   |

### claim

```solidity
function claim(address receiver, uint256 quantity, address currency, uint256 pricePerToken, bytes32[] proofs, uint256 proofMaxQuantityPerTransaction) external payable
```

Lets an account claim a given quantity of tokens.

#### Parameters

| Name                           | Type      | Description                                                                                               |
| ------------------------------ | --------- | --------------------------------------------------------------------------------------------------------- |
| receiver                       | address   | The receiver of the tokens to claim.                                                                      |
| quantity                       | uint256   | The quantity of tokens to claim.                                                                          |
| currency                       | address   | The currency in which to pay for the claim.                                                               |
| pricePerToken                  | uint256   | The price per token (i.e. price per 1 ether unit of the token) to pay for the claim.                      |
| proofs                         | bytes32[] | The proof of the claimer&#39;s inclusion in the merkle root allowlist of the claim conditions that apply. |
| proofMaxQuantityPerTransaction | uint256   | (Optional) The maximum number of tokens an address included in an allowlist can claim.                    |

### setClaimConditions

```solidity
function setClaimConditions(IDropClaimCondition.ClaimCondition[] phases, bool resetClaimEligibility) external nonpayable
```

#### Parameters

| Name                  | Type                                 | Description |
| --------------------- | ------------------------------------ | ----------- |
| phases                | IDropClaimCondition.ClaimCondition[] | undefined   |
| resetClaimEligibility | bool                                 | undefined   |

### totalSupply

```solidity
function totalSupply() external view returns (uint256)
```

_Returns the amount of tokens in existence._

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | uint256 | undefined   |

### transfer

```solidity
function transfer(address to, uint256 amount) external nonpayable returns (bool)
```

_Moves `amount` tokens from the caller&#39;s account to `to`. Returns a boolean value indicating whether the operation succeeded. Emits a {Transfer} event._

#### Parameters

| Name   | Type    | Description |
| ------ | ------- | ----------- |
| to     | address | undefined   |
| amount | uint256 | undefined   |

#### Returns

| Name | Type | Description |
| ---- | ---- | ----------- |
| \_0  | bool | undefined   |

### transferFrom

```solidity
function transferFrom(address from, address to, uint256 amount) external nonpayable returns (bool)
```

_Moves `amount` tokens from `from` to `to` using the allowance mechanism. `amount` is then deducted from the caller&#39;s allowance. Returns a boolean value indicating whether the operation succeeded. Emits a {Transfer} event._

#### Parameters

| Name   | Type    | Description |
| ------ | ------- | ----------- |
| from   | address | undefined   |
| to     | address | undefined   |
| amount | uint256 | undefined   |

#### Returns

| Name | Type | Description |
| ---- | ---- | ----------- |
| \_0  | bool | undefined   |

## Events

### Approval

```solidity
event Approval(address indexed owner, address indexed spender, uint256 value)
```

#### Parameters

| Name              | Type    | Description |
| ----------------- | ------- | ----------- |
| owner `indexed`   | address | undefined   |
| spender `indexed` | address | undefined   |
| value             | uint256 | undefined   |

### ClaimConditionsUpdated

```solidity
event ClaimConditionsUpdated(IDropClaimCondition.ClaimCondition[] claimConditions)
```

_Emitted when new claim conditions are set._

#### Parameters

| Name            | Type                                 | Description |
| --------------- | ------------------------------------ | ----------- |
| claimConditions | IDropClaimCondition.ClaimCondition[] | undefined   |

### MaxTotalSupplyUpdated

```solidity
event MaxTotalSupplyUpdated(uint256 maxTotalSupply)
```

_Emitted when the global max supply of tokens is updated._

#### Parameters

| Name           | Type    | Description |
| -------------- | ------- | ----------- |
| maxTotalSupply | uint256 | undefined   |

### MaxWalletClaimCountUpdated

```solidity
event MaxWalletClaimCountUpdated(uint256 count)
```

_Emitted when the global max wallet claim count is updated._

#### Parameters

| Name  | Type    | Description |
| ----- | ------- | ----------- |
| count | uint256 | undefined   |

### TokensClaimed

```solidity
event TokensClaimed(uint256 indexed claimConditionIndex, address indexed claimer, address indexed receiver, uint256 quantityClaimed)
```

_Emitted when tokens are claimed._

#### Parameters

| Name                          | Type    | Description |
| ----------------------------- | ------- | ----------- |
| claimConditionIndex `indexed` | uint256 | undefined   |
| claimer `indexed`             | address | undefined   |
| receiver `indexed`            | address | undefined   |
| quantityClaimed               | uint256 | undefined   |

### Transfer

```solidity
event Transfer(address indexed from, address indexed to, uint256 value)
```

#### Parameters

| Name           | Type    | Description |
| -------------- | ------- | ----------- |
| from `indexed` | address | undefined   |
| to `indexed`   | address | undefined   |
| value          | uint256 | undefined   |

### WalletClaimCountUpdated

```solidity
event WalletClaimCountUpdated(address indexed wallet, uint256 count)
```

_Emitted when the wallet claim count for an address is updated._

#### Parameters

| Name             | Type    | Description |
| ---------------- | ------- | ----------- |
| wallet `indexed` | address | undefined   |
| count            | uint256 | undefined   |
