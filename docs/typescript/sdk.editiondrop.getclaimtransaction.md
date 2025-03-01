---
slug: /sdk.editiondrop.getclaimtransaction
title: EditionDrop.getClaimTransaction() method
hide_title: true
displayed_sidebar: typescript
---

<!-- Do not edit this file. It is automatically generated by API Documenter. -->

## EditionDrop.getClaimTransaction() method

Construct a claim transaction without executing it. This is useful for estimating the gas cost of a claim transaction, overriding transaction options and having fine grained control over the transaction execution.

**Signature:**

```typescript
getClaimTransaction(destinationAddress: string, tokenId: BigNumberish, quantity: BigNumberish, checkERC20Allowance?: boolean): Promise<TransactionTask>;
```

## Parameters

| Parameter           | Type         | Description       |
| ------------------- | ------------ | ----------------- |
| destinationAddress  | string       |                   |
| tokenId             | BigNumberish |                   |
| quantity            | BigNumberish |                   |
| checkERC20Allowance | boolean      | <i>(Optional)</i> |

**Returns:**

Promise&lt;TransactionTask&gt;
