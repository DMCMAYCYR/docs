---
slug: /ERC721Drop
title: ERC721Drop
hide_title: true
displayed_sidebar: contracts
---

# ERC721Drop

BASE: ERC721A EXTENSION: SignatureMintERC721, DropSinglePhase The `ERC721Drop` contract uses the `ERC721Base` contract, along with the `SignatureMintERC721` and `DropSinglePhase` extension. The &#39;signature minting&#39; mechanism in the `SignatureMintERC721` extension is a way for a contract admin to authorize an external party&#39;s request to mint tokens on the admin&#39;s contract. At a high level, this means you can authorize some external party to mint tokens on your contract, and specify what exactly will be minted by that external party. The `drop` mechanism in the `DropSinglePhase` extension is a distribution mechanism for lazy minted tokens. It lets you set restrictions such as a price to charge, an allowlist etc. when an address atttempts to mint lazy minted tokens. The `ERC721Drop` contract lets you lazy mint tokens, and distribute those lazy minted tokens via signature minting, or via the drop mechanism.

## Methods

### approve

```solidity
function approve(address to, uint256 tokenId) external nonpayable
```

_See {IERC721-approve}._

#### Parameters

| Name    | Type    | Description |
| ------- | ------- | ----------- |
| to      | address | undefined   |
| tokenId | uint256 | undefined   |

### balanceOf

```solidity
function balanceOf(address owner) external view returns (uint256)
```

_See {IERC721-balanceOf}._

#### Parameters

| Name  | Type    | Description |
| ----- | ------- | ----------- |
| owner | address | undefined   |

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | uint256 | undefined   |

### batchMintTo

```solidity
function batchMintTo(address, uint256, string, bytes) external nonpayable
```

#### Parameters

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | address | undefined   |
| \_1  | uint256 | undefined   |
| \_2  | string  | undefined   |
| \_3  | bytes   | undefined   |

### burn

```solidity
function burn(uint256 _tokenId) external nonpayable
```

Lets an owner or approved operator burn the NFT of the given tokenId.

_ERC721A&#39;s `_burn(uint256,bool)` internally checks for token approvals._

#### Parameters

| Name      | Type    | Description                     |
| --------- | ------- | ------------------------------- |
| \_tokenId | uint256 | The tokenId of the NFT to burn. |

### claim

```solidity
function claim(address _receiver, uint256 _quantity, address _currency, uint256 _pricePerToken, IDropSinglePhase.AllowlistProof _allowlistProof, bytes _data) external payable
```

#### Parameters

| Name             | Type                            | Description |
| ---------------- | ------------------------------- | ----------- |
| \_receiver       | address                         | undefined   |
| \_quantity       | uint256                         | undefined   |
| \_currency       | address                         | undefined   |
| \_pricePerToken  | uint256                         | undefined   |
| \_allowlistProof | IDropSinglePhase.AllowlistProof | undefined   |
| \_data           | bytes                           | undefined   |

### claimCondition

```solidity
function claimCondition() external view returns (uint256 startTimestamp, uint256 maxClaimableSupply, uint256 supplyClaimed, uint256 quantityLimitPerTransaction, uint256 waitTimeInSecondsBetweenClaims, bytes32 merkleRoot, uint256 pricePerToken, address currency)
```

#### Returns

| Name                           | Type    | Description |
| ------------------------------ | ------- | ----------- |
| startTimestamp                 | uint256 | undefined   |
| maxClaimableSupply             | uint256 | undefined   |
| supplyClaimed                  | uint256 | undefined   |
| quantityLimitPerTransaction    | uint256 | undefined   |
| waitTimeInSecondsBetweenClaims | uint256 | undefined   |
| merkleRoot                     | bytes32 | undefined   |
| pricePerToken                  | uint256 | undefined   |
| currency                       | address | undefined   |

### contractURI

```solidity
function contractURI() external view returns (string)
```

Returns the contract metadata URI.

#### Returns

| Name | Type   | Description |
| ---- | ------ | ----------- |
| \_0  | string | undefined   |

### encryptDecrypt

```solidity
function encryptDecrypt(bytes data, bytes key) external pure returns (bytes result)
```

Encrypt/decrypt data on chain.

_Encrypt/decrypt given `data` with `key`. Uses inline assembly. See: https://ethereum.stackexchange.com/questions/69825/decrypt-message-on-chain_

#### Parameters

| Name | Type  | Description                                          |
| ---- | ----- | ---------------------------------------------------- |
| data | bytes | Bytes of data to encrypt/decrypt.                    |
| key  | bytes | Secure key used by caller for encryption/decryption. |

#### Returns

| Name   | Type  | Description                                       |
| ------ | ----- | ------------------------------------------------- |
| result | bytes | Output after encryption/decryption of given data. |

### encryptedData

```solidity
function encryptedData(uint256) external view returns (bytes)
```

#### Parameters

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | uint256 | undefined   |

#### Returns

| Name | Type  | Description |
| ---- | ----- | ----------- |
| \_0  | bytes | undefined   |

### getApproved

```solidity
function getApproved(uint256 tokenId) external view returns (address)
```

_See {IERC721-getApproved}._

#### Parameters

| Name    | Type    | Description |
| ------- | ------- | ----------- |
| tokenId | uint256 | undefined   |

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | address | undefined   |

### getBaseURICount

```solidity
function getBaseURICount() external view returns (uint256)
```

Returns the count of batches of NFTs.

_Each batch of tokens has an in ID and an associated `baseURI`. See {batchIds}._

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | uint256 | undefined   |

### getBatchIdAtIndex

```solidity
function getBatchIdAtIndex(uint256 _index) external view returns (uint256)
```

Returns the ID for the batch of tokens the given tokenId belongs to.

_See {getBaseURICount}._

#### Parameters

| Name    | Type    | Description    |
| ------- | ------- | -------------- |
| \_index | uint256 | ID of a token. |

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | uint256 | undefined   |

### getClaimTimestamp

```solidity
function getClaimTimestamp(address _claimer) external view returns (uint256 lastClaimedAt, uint256 nextValidClaimTimestamp)
```

_Returns the timestamp for when a claimer is eligible for claiming NFTs again._

#### Parameters

| Name      | Type    | Description |
| --------- | ------- | ----------- |
| \_claimer | address | undefined   |

#### Returns

| Name                    | Type    | Description |
| ----------------------- | ------- | ----------- |
| lastClaimedAt           | uint256 | undefined   |
| nextValidClaimTimestamp | uint256 | undefined   |

### getDefaultRoyaltyInfo

```solidity
function getDefaultRoyaltyInfo() external view returns (address, uint16)
```

Returns the defualt royalty recipient and BPS for this contract&#39;s NFTs.

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | address | undefined   |
| \_1  | uint16  | undefined   |

### getRevealURI

```solidity
function getRevealURI(uint256 _batchId, bytes _key) external view returns (string revealedURI)
```

Returns revealed URI for a batch of NFTs.

_Reveal encrypted base URI for `_batchId` with caller/admin&#39;s `_key` used for encryption. Reverts if there&#39;s no encrypted URI for `_batchId`. See {encryptDecrypt}._

#### Parameters

| Name      | Type    | Description                                                |
| --------- | ------- | ---------------------------------------------------------- |
| \_batchId | uint256 | ID of the batch for which URI is being revealed.           |
| \_key     | bytes   | Secure key used by caller/admin for encryption of baseURI. |

#### Returns

| Name        | Type   | Description         |
| ----------- | ------ | ------------------- |
| revealedURI | string | Decrypted base URI. |

### getRoyaltyInfoForToken

```solidity
function getRoyaltyInfoForToken(uint256 _tokenId) external view returns (address, uint16)
```

View royalty info for a given token.

_Returns royalty recipient and bps for `_tokenId`._

#### Parameters

| Name      | Type    | Description                                             |
| --------- | ------- | ------------------------------------------------------- |
| \_tokenId | uint256 | The tokenID of the NFT for which to query royalty info. |

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | address | undefined   |
| \_1  | uint16  | undefined   |

### isApprovedForAll

```solidity
function isApprovedForAll(address owner, address operator) external view returns (bool)
```

_See {IERC721-isApprovedForAll}._

#### Parameters

| Name     | Type    | Description |
| -------- | ------- | ----------- |
| owner    | address | undefined   |
| operator | address | undefined   |

#### Returns

| Name | Type | Description |
| ---- | ---- | ----------- |
| \_0  | bool | undefined   |

### isApprovedOrOwner

```solidity
function isApprovedOrOwner(address _operator, uint256 _tokenId) external view returns (bool isApprovedOrOwnerOf)
```

Returns whether a given address is the owner, or approved to transfer an NFT.

#### Parameters

| Name       | Type    | Description |
| ---------- | ------- | ----------- |
| \_operator | address | undefined   |
| \_tokenId  | uint256 | undefined   |

#### Returns

| Name                | Type | Description |
| ------------------- | ---- | ----------- |
| isApprovedOrOwnerOf | bool | undefined   |

### isEncryptedBatch

```solidity
function isEncryptedBatch(uint256 _batchId) external view returns (bool)
```

Returns whether the relvant batch of NFTs is subject to a delayed reveal.

_Returns `true` if `_batchId`&#39;s base URI is encrypted._

#### Parameters

| Name      | Type    | Description            |
| --------- | ------- | ---------------------- |
| \_batchId | uint256 | ID of a batch of NFTs. |

#### Returns

| Name | Type | Description |
| ---- | ---- | ----------- |
| \_0  | bool | undefined   |

### lazyMint

```solidity
function lazyMint(uint256 _amount, string _baseURIForTokens, bytes _data) external nonpayable returns (uint256 batchId)
```

Lets an authorized address lazy mint a given amount of NFTs.

#### Parameters

| Name               | Type    | Description                                                                                                                                                   |
| ------------------ | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| \_amount           | uint256 | The number of NFTs to lazy mint.                                                                                                                              |
| \_baseURIForTokens | string  | The placeholder base URI for the &#39;n&#39; number of NFTs being lazy minted, where the metadata for each of those NFTs is `${baseURIForTokens}/${tokenId}`. |
| \_data             | bytes   | The encrypted base URI + provenance hash for the batch of NFTs being lazy minted.                                                                             |

#### Returns

| Name    | Type    | Description                                                             |
| ------- | ------- | ----------------------------------------------------------------------- |
| batchId | uint256 | A unique integer identifier for the batch of NFTs lazy minted together. |

### mintTo

```solidity
function mintTo(address, string) external nonpayable
```

#### Parameters

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | address | undefined   |
| \_1  | string  | undefined   |

### mintWithSignature

```solidity
function mintWithSignature(ISignatureMintERC721.MintRequest _req, bytes _signature) external payable returns (address signer)
```

#### Parameters

| Name        | Type                             | Description |
| ----------- | -------------------------------- | ----------- |
| \_req       | ISignatureMintERC721.MintRequest | undefined   |
| \_signature | bytes                            | undefined   |

#### Returns

| Name   | Type    | Description |
| ------ | ------- | ----------- |
| signer | address | undefined   |

### multicall

```solidity
function multicall(bytes[] data) external nonpayable returns (bytes[] results)
```

Receives and executes a batch of function calls on this contract.

_Receives and executes a batch of function calls on this contract._

#### Parameters

| Name | Type    | Description                                                          |
| ---- | ------- | -------------------------------------------------------------------- |
| data | bytes[] | The bytes data that makes up the batch of function calls to execute. |

#### Returns

| Name    | Type    | Description                                                                      |
| ------- | ------- | -------------------------------------------------------------------------------- |
| results | bytes[] | The bytes data that makes up the result of the batch of function calls executed. |

### name

```solidity
function name() external view returns (string)
```

_See {IERC721Metadata-name}._

#### Returns

| Name | Type   | Description |
| ---- | ------ | ----------- |
| \_0  | string | undefined   |

### nextTokenIdToMint

```solidity
function nextTokenIdToMint() external view returns (uint256)
```

The tokenId assigned to the next new NFT to be lazy minted.

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | uint256 | undefined   |

### owner

```solidity
function owner() external view returns (address)
```

Returns the owner of the contract.

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | address | undefined   |

### ownerOf

```solidity
function ownerOf(uint256 tokenId) external view returns (address)
```

_See {IERC721-ownerOf}._

#### Parameters

| Name    | Type    | Description |
| ------- | ------- | ----------- |
| tokenId | uint256 | undefined   |

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | address | undefined   |

### primarySaleRecipient

```solidity
function primarySaleRecipient() external view returns (address)
```

_Returns primary sale recipient address._

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | address | undefined   |

### reveal

```solidity
function reveal(uint256 _index, bytes _key) external nonpayable returns (string revealedURI)
```

Lets an authorized address reveal a batch of delayed reveal NFTs.

#### Parameters

| Name    | Type    | Description                                                                   |
| ------- | ------- | ----------------------------------------------------------------------------- |
| \_index | uint256 | The ID for the batch of delayed-reveal NFTs to reveal.                        |
| \_key   | bytes   | The key with which the base URI for the relevant batch of NFTs was encrypted. |

#### Returns

| Name        | Type   | Description |
| ----------- | ------ | ----------- |
| revealedURI | string | undefined   |

### royaltyInfo

```solidity
function royaltyInfo(uint256 tokenId, uint256 salePrice) external view returns (address receiver, uint256 royaltyAmount)
```

View royalty info for a given token and sale price.

_Returns royalty amount and recipient for `tokenId` and `salePrice`._

#### Parameters

| Name      | Type    | Description                                             |
| --------- | ------- | ------------------------------------------------------- |
| tokenId   | uint256 | The tokenID of the NFT for which to query royalty info. |
| salePrice | uint256 | Sale price of the token.                                |

#### Returns

| Name          | Type    | Description                                            |
| ------------- | ------- | ------------------------------------------------------ |
| receiver      | address | Address of royalty recipient account.                  |
| royaltyAmount | uint256 | Royalty amount calculated at current royaltyBps value. |

### safeTransferFrom

```solidity
function safeTransferFrom(address from, address to, uint256 tokenId) external nonpayable
```

_See {IERC721-safeTransferFrom}._

#### Parameters

| Name    | Type    | Description |
| ------- | ------- | ----------- |
| from    | address | undefined   |
| to      | address | undefined   |
| tokenId | uint256 | undefined   |

### safeTransferFrom

```solidity
function safeTransferFrom(address from, address to, uint256 tokenId, bytes _data) external nonpayable
```

_See {IERC721-safeTransferFrom}._

#### Parameters

| Name    | Type    | Description |
| ------- | ------- | ----------- |
| from    | address | undefined   |
| to      | address | undefined   |
| tokenId | uint256 | undefined   |
| \_data  | bytes   | undefined   |

### setApprovalForAll

```solidity
function setApprovalForAll(address operator, bool approved) external nonpayable
```

_See {IERC721-setApprovalForAll}._

#### Parameters

| Name     | Type    | Description |
| -------- | ------- | ----------- |
| operator | address | undefined   |
| approved | bool    | undefined   |

### setClaimConditions

```solidity
function setClaimConditions(IClaimCondition.ClaimCondition _condition, bool _resetClaimEligibility) external nonpayable
```

#### Parameters

| Name                    | Type                           | Description |
| ----------------------- | ------------------------------ | ----------- |
| \_condition             | IClaimCondition.ClaimCondition | undefined   |
| \_resetClaimEligibility | bool                           | undefined   |

### setContractURI

```solidity
function setContractURI(string _uri) external nonpayable
```

Lets a contract admin set the URI for contract-level metadata.

_Caller should be authorized to setup contractURI, e.g. contract admin. See {\_canSetContractURI}. Emits {ContractURIUpdated Event}._

#### Parameters

| Name  | Type   | Description                                                           |
| ----- | ------ | --------------------------------------------------------------------- |
| \_uri | string | keccak256 hash of the role. e.g. keccak256(&quot;TRANSFER_ROLE&quot;) |

### setDefaultRoyaltyInfo

```solidity
function setDefaultRoyaltyInfo(address _royaltyRecipient, uint256 _royaltyBps) external nonpayable
```

Updates default royalty recipient and bps.

_Caller should be authorized to set royalty info. See {\_canSetRoyaltyInfo}. Emits {DefaultRoyalty Event}; See {\_setupDefaultRoyaltyInfo}._

#### Parameters

| Name               | Type    | Description                                     |
| ------------------ | ------- | ----------------------------------------------- |
| \_royaltyRecipient | address | Address to be set as default royalty recipient. |
| \_royaltyBps       | uint256 | Updated royalty bps.                            |

### setOwner

```solidity
function setOwner(address _newOwner) external nonpayable
```

Lets an authorized wallet set a new owner for the contract.

#### Parameters

| Name       | Type    | Description                                          |
| ---------- | ------- | ---------------------------------------------------- |
| \_newOwner | address | The address to set as the new owner of the contract. |

### setPrimarySaleRecipient

```solidity
function setPrimarySaleRecipient(address _saleRecipient) external nonpayable
```

Updates primary sale recipient.

_Caller should be authorized to set primary sales info. See {\_canSetPrimarySaleRecipient}. Emits {PrimarySaleRecipientUpdated Event}; See {\_setupPrimarySaleRecipient}._

#### Parameters

| Name            | Type    | Description                                          |
| --------------- | ------- | ---------------------------------------------------- |
| \_saleRecipient | address | Address to be set as new recipient of primary sales. |

### setRoyaltyInfoForToken

```solidity
function setRoyaltyInfoForToken(uint256 _tokenId, address _recipient, uint256 _bps) external nonpayable
```

Updates default royalty recipient and bps for a particular token.

_Sets royalty info for `_tokenId`. Caller should be authorized to set royalty info. See {\_canSetRoyaltyInfo}. Emits {RoyaltyForToken Event}; See {\_setupRoyaltyInfoForToken}._

#### Parameters

| Name        | Type    | Description                                                |
| ----------- | ------- | ---------------------------------------------------------- |
| \_tokenId   | uint256 | undefined                                                  |
| \_recipient | address | Address to be set as royalty recipient for given token Id. |
| \_bps       | uint256 | Updated royalty bps for the token Id.                      |

### supportsInterface

```solidity
function supportsInterface(bytes4 interfaceId) external view returns (bool)
```

_See ERC165: https://eips.ethereum.org/EIPS/eip-165_

#### Parameters

| Name        | Type   | Description |
| ----------- | ------ | ----------- |
| interfaceId | bytes4 | undefined   |

#### Returns

| Name | Type | Description |
| ---- | ---- | ----------- |
| \_0  | bool | undefined   |

### symbol

```solidity
function symbol() external view returns (string)
```

_See {IERC721Metadata-symbol}._

#### Returns

| Name | Type   | Description |
| ---- | ------ | ----------- |
| \_0  | string | undefined   |

### tokenURI

```solidity
function tokenURI(uint256 _tokenId) external view returns (string)
```

Returns the metadata URI for an NFT.

_See `BatchMintMetadata` for handling of metadata in this contract._

#### Parameters

| Name      | Type    | Description            |
| --------- | ------- | ---------------------- |
| \_tokenId | uint256 | The tokenId of an NFT. |

#### Returns

| Name | Type   | Description |
| ---- | ------ | ----------- |
| \_0  | string | undefined   |

### totalSupply

```solidity
function totalSupply() external view returns (uint256)
```

_Burned tokens are calculated here, use \_totalMinted() if you want to count just minted tokens._

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | uint256 | undefined   |

### transferFrom

```solidity
function transferFrom(address from, address to, uint256 tokenId) external nonpayable
```

_See {IERC721-transferFrom}._

#### Parameters

| Name    | Type    | Description |
| ------- | ------- | ----------- |
| from    | address | undefined   |
| to      | address | undefined   |
| tokenId | uint256 | undefined   |

### verify

```solidity
function verify(ISignatureMintERC721.MintRequest _req, bytes _signature) external view returns (bool success, address signer)
```

#### Parameters

| Name        | Type                             | Description |
| ----------- | -------------------------------- | ----------- |
| \_req       | ISignatureMintERC721.MintRequest | undefined   |
| \_signature | bytes                            | undefined   |

#### Returns

| Name    | Type    | Description |
| ------- | ------- | ----------- |
| success | bool    | undefined   |
| signer  | address | undefined   |

### verifyClaim

```solidity
function verifyClaim(address _claimer, uint256 _quantity, address _currency, uint256 _pricePerToken, bool verifyMaxQuantityPerTransaction) external view
```

_Checks a request to claim NFTs against the active claim condition&#39;s criteria._

#### Parameters

| Name                            | Type    | Description |
| ------------------------------- | ------- | ----------- |
| \_claimer                       | address | undefined   |
| \_quantity                      | uint256 | undefined   |
| \_currency                      | address | undefined   |
| \_pricePerToken                 | uint256 | undefined   |
| verifyMaxQuantityPerTransaction | bool    | undefined   |

### verifyClaimMerkleProof

```solidity
function verifyClaimMerkleProof(address _claimer, uint256 _quantity, IDropSinglePhase.AllowlistProof _allowlistProof) external view returns (bool validMerkleProof, uint256 merkleProofIndex)
```

#### Parameters

| Name             | Type                            | Description |
| ---------------- | ------------------------------- | ----------- |
| \_claimer        | address                         | undefined   |
| \_quantity       | uint256                         | undefined   |
| \_allowlistProof | IDropSinglePhase.AllowlistProof | undefined   |

#### Returns

| Name             | Type    | Description |
| ---------------- | ------- | ----------- |
| validMerkleProof | bool    | undefined   |
| merkleProofIndex | uint256 | undefined   |

## Events

### Approval

```solidity
event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId)
```

#### Parameters

| Name               | Type    | Description |
| ------------------ | ------- | ----------- |
| owner `indexed`    | address | undefined   |
| approved `indexed` | address | undefined   |
| tokenId `indexed`  | uint256 | undefined   |

### ApprovalForAll

```solidity
event ApprovalForAll(address indexed owner, address indexed operator, bool approved)
```

#### Parameters

| Name               | Type    | Description |
| ------------------ | ------- | ----------- |
| owner `indexed`    | address | undefined   |
| operator `indexed` | address | undefined   |
| approved           | bool    | undefined   |

### ClaimConditionUpdated

```solidity
event ClaimConditionUpdated(IClaimCondition.ClaimCondition condition, bool resetEligibility)
```

#### Parameters

| Name             | Type                           | Description |
| ---------------- | ------------------------------ | ----------- |
| condition        | IClaimCondition.ClaimCondition | undefined   |
| resetEligibility | bool                           | undefined   |

### ContractURIUpdated

```solidity
event ContractURIUpdated(string prevURI, string newURI)
```

#### Parameters

| Name    | Type   | Description |
| ------- | ------ | ----------- |
| prevURI | string | undefined   |
| newURI  | string | undefined   |

### DefaultRoyalty

```solidity
event DefaultRoyalty(address indexed newRoyaltyRecipient, uint256 newRoyaltyBps)
```

#### Parameters

| Name                          | Type    | Description |
| ----------------------------- | ------- | ----------- |
| newRoyaltyRecipient `indexed` | address | undefined   |
| newRoyaltyBps                 | uint256 | undefined   |

### OwnerUpdated

```solidity
event OwnerUpdated(address indexed prevOwner, address indexed newOwner)
```

#### Parameters

| Name                | Type    | Description |
| ------------------- | ------- | ----------- |
| prevOwner `indexed` | address | undefined   |
| newOwner `indexed`  | address | undefined   |

### PrimarySaleRecipientUpdated

```solidity
event PrimarySaleRecipientUpdated(address indexed recipient)
```

#### Parameters

| Name                | Type    | Description |
| ------------------- | ------- | ----------- |
| recipient `indexed` | address | undefined   |

### RoyaltyForToken

```solidity
event RoyaltyForToken(uint256 indexed tokenId, address indexed royaltyRecipient, uint256 royaltyBps)
```

#### Parameters

| Name                       | Type    | Description |
| -------------------------- | ------- | ----------- |
| tokenId `indexed`          | uint256 | undefined   |
| royaltyRecipient `indexed` | address | undefined   |
| royaltyBps                 | uint256 | undefined   |

### TokenURIRevealed

```solidity
event TokenURIRevealed(uint256 indexed index, string revealedURI)
```

#### Parameters

| Name            | Type    | Description |
| --------------- | ------- | ----------- |
| index `indexed` | uint256 | undefined   |
| revealedURI     | string  | undefined   |

### TokensClaimed

```solidity
event TokensClaimed(address indexed claimer, address indexed receiver, uint256 indexed startTokenId, uint256 quantityClaimed)
```

#### Parameters

| Name                   | Type    | Description |
| ---------------------- | ------- | ----------- |
| claimer `indexed`      | address | undefined   |
| receiver `indexed`     | address | undefined   |
| startTokenId `indexed` | uint256 | undefined   |
| quantityClaimed        | uint256 | undefined   |

### TokensLazyMinted

```solidity
event TokensLazyMinted(uint256 indexed startTokenId, uint256 endTokenId, string baseURI, bytes encryptedBaseURI)
```

#### Parameters

| Name                   | Type    | Description |
| ---------------------- | ------- | ----------- |
| startTokenId `indexed` | uint256 | undefined   |
| endTokenId             | uint256 | undefined   |
| baseURI                | string  | undefined   |
| encryptedBaseURI       | bytes   | undefined   |

### TokensMintedWithSignature

```solidity
event TokensMintedWithSignature(address indexed signer, address indexed mintedTo, uint256 indexed tokenIdMinted, ISignatureMintERC721.MintRequest mintRequest)
```

#### Parameters

| Name                    | Type                             | Description |
| ----------------------- | -------------------------------- | ----------- |
| signer `indexed`        | address                          | undefined   |
| mintedTo `indexed`      | address                          | undefined   |
| tokenIdMinted `indexed` | uint256                          | undefined   |
| mintRequest             | ISignatureMintERC721.MintRequest | undefined   |

### Transfer

```solidity
event Transfer(address indexed from, address indexed to, uint256 indexed tokenId)
```

#### Parameters

| Name              | Type    | Description |
| ----------------- | ------- | ----------- |
| from `indexed`    | address | undefined   |
| to `indexed`      | address | undefined   |
| tokenId `indexed` | uint256 | undefined   |

## Errors

### ApprovalCallerNotOwnerNorApproved

```solidity
error ApprovalCallerNotOwnerNorApproved()
```

The caller must own the token or be an approved operator.

### ApprovalQueryForNonexistentToken

```solidity
error ApprovalQueryForNonexistentToken()
```

The token does not exist.

### ApprovalToCurrentOwner

```solidity
error ApprovalToCurrentOwner()
```

The caller cannot approve to the current owner.

### ApproveToCaller

```solidity
error ApproveToCaller()
```

The caller cannot approve to their own address.

### BalanceQueryForZeroAddress

```solidity
error BalanceQueryForZeroAddress()
```

Cannot query the balance for the zero address.

### MintToZeroAddress

```solidity
error MintToZeroAddress()
```

Cannot mint to the zero address.

### MintZeroQuantity

```solidity
error MintZeroQuantity()
```

The quantity of tokens minted must be more than zero.

### OwnerQueryForNonexistentToken

```solidity
error OwnerQueryForNonexistentToken()
```

The token does not exist.

### TransferCallerNotOwnerNorApproved

```solidity
error TransferCallerNotOwnerNorApproved()
```

The caller must own the token or be an approved operator.

### TransferFromIncorrectOwner

```solidity
error TransferFromIncorrectOwner()
```

The token must be owned by `from`.

### TransferToNonERC721ReceiverImplementer

```solidity
error TransferToNonERC721ReceiverImplementer()
```

Cannot safely transfer to a contract that does not implement the ERC721Receiver interface.

### TransferToZeroAddress

```solidity
error TransferToZeroAddress()
```

Cannot transfer to the zero address.

### URIQueryForNonexistentToken

```solidity
error URIQueryForNonexistentToken()
```

The token does not exist.
