---
slug: /ERC721Multiwrap
title: ERC721Multiwrap
hide_title: true
displayed_sidebar: contracts
---

# ERC721Multiwrap

BASE: ERC721Base EXTENSION: TokenStore, SoulboundERC721A The `ERC721Multiwrap` contract uses the `ERC721Base` contract, along with the `TokenStore` and `SoulboundERC721A` extension. The `ERC721Multiwrap` contract lets you wrap arbitrary ERC20, ERC721 and ERC1155 tokens you own into a single wrapped token / NFT. The `SoulboundERC721A` extension lets you make your NFTs &#39;soulbound&#39; i.e. non-transferrable.

## Methods

### DEFAULT_ADMIN_ROLE

```solidity
function DEFAULT_ADMIN_ROLE() external view returns (bytes32)
```

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | bytes32 | undefined   |

### NATIVE_TOKEN

```solidity
function NATIVE_TOKEN() external view returns (address)
```

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | address | undefined   |

### TRANSFER_ROLE

```solidity
function TRANSFER_ROLE() external view returns (bytes32)
```

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | bytes32 | undefined   |

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

### contractURI

```solidity
function contractURI() external view returns (string)
```

Returns the contract metadata URI.

#### Returns

| Name | Type   | Description |
| ---- | ------ | ----------- |
| \_0  | string | undefined   |

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

### getRoleAdmin

```solidity
function getRoleAdmin(bytes32 role) external view returns (bytes32)
```

Returns the admin role that controls the specified role.

_See {grantRole} and {revokeRole}. To change a role&#39;s admin, use {\_setRoleAdmin}._

#### Parameters

| Name | Type    | Description                                                           |
| ---- | ------- | --------------------------------------------------------------------- |
| role | bytes32 | keccak256 hash of the role. e.g. keccak256(&quot;TRANSFER_ROLE&quot;) |

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | bytes32 | undefined   |

### getRoleMember

```solidity
function getRoleMember(bytes32 role, uint256 index) external view returns (address member)
```

Returns the role-member from a list of members for a role, at a given index.

_Returns `member` who has `role`, at `index` of role-members list. See struct {RoleMembers}, and mapping {roleMembers}_

#### Parameters

| Name  | Type    | Description                                                           |
| ----- | ------- | --------------------------------------------------------------------- |
| role  | bytes32 | keccak256 hash of the role. e.g. keccak256(&quot;TRANSFER_ROLE&quot;) |
| index | uint256 | Index in list of current members for the role.                        |

#### Returns

| Name   | Type    | Description                        |
| ------ | ------- | ---------------------------------- |
| member | address | Address of account that has `role` |

### getRoleMemberCount

```solidity
function getRoleMemberCount(bytes32 role) external view returns (uint256 count)
```

Returns total number of accounts that have a role.

_Returns `count` of accounts that have `role`. See struct {RoleMembers}, and mapping {roleMembers}_

#### Parameters

| Name | Type    | Description                                                           |
| ---- | ------- | --------------------------------------------------------------------- |
| role | bytes32 | keccak256 hash of the role. e.g. keccak256(&quot;TRANSFER_ROLE&quot;) |

#### Returns

| Name  | Type    | Description                               |
| ----- | ------- | ----------------------------------------- |
| count | uint256 | Total number of accounts that have `role` |

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

### getTokenCountOfBundle

```solidity
function getTokenCountOfBundle(uint256 _bundleId) external view returns (uint256)
```

_Returns the total number of assets in a particular bundle._

#### Parameters

| Name       | Type    | Description |
| ---------- | ------- | ----------- |
| \_bundleId | uint256 | undefined   |

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | uint256 | undefined   |

### getTokenOfBundle

```solidity
function getTokenOfBundle(uint256 _bundleId, uint256 index) external view returns (struct ITokenBundle.Token)
```

_Returns an asset contained in a particular bundle, at a particular index._

#### Parameters

| Name       | Type    | Description |
| ---------- | ------- | ----------- |
| \_bundleId | uint256 | undefined   |
| index      | uint256 | undefined   |

#### Returns

| Name | Type               | Description |
| ---- | ------------------ | ----------- |
| \_0  | ITokenBundle.Token | undefined   |

### getUriOfBundle

```solidity
function getUriOfBundle(uint256 _bundleId) external view returns (string)
```

_Returns the uri of a particular bundle._

#### Parameters

| Name       | Type    | Description |
| ---------- | ------- | ----------- |
| \_bundleId | uint256 | undefined   |

#### Returns

| Name | Type   | Description |
| ---- | ------ | ----------- |
| \_0  | string | undefined   |

### grantRole

```solidity
function grantRole(bytes32 role, address account) external nonpayable
```

Grants a role to an account, if not previously granted.

_Caller must have admin role for the `role`. Emits {RoleGranted Event}._

#### Parameters

| Name    | Type    | Description                                                           |
| ------- | ------- | --------------------------------------------------------------------- |
| role    | bytes32 | keccak256 hash of the role. e.g. keccak256(&quot;TRANSFER_ROLE&quot;) |
| account | address | Address of the account to which the role is being granted.            |

### hasRole

```solidity
function hasRole(bytes32 role, address account) external view returns (bool)
```

Checks whether an account has a particular role.

_Returns `true` if `account` has been granted `role`._

#### Parameters

| Name    | Type    | Description                                                           |
| ------- | ------- | --------------------------------------------------------------------- |
| role    | bytes32 | keccak256 hash of the role. e.g. keccak256(&quot;TRANSFER_ROLE&quot;) |
| account | address | Address of the account for which the role is being checked.           |

#### Returns

| Name | Type | Description |
| ---- | ---- | ----------- |
| \_0  | bool | undefined   |

### hasRoleWithSwitch

```solidity
function hasRoleWithSwitch(bytes32 role, address account) external view returns (bool)
```

Checks whether an account has a particular role; role restrictions can be swtiched on and off.

_Returns `true` if `account` has been granted `role`. Role restrictions can be swtiched on and off: - If address(0) has ROLE, then the ROLE restrictions don&#39;t apply. - If address(0) does not have ROLE, then the ROLE restrictions will apply._

#### Parameters

| Name    | Type    | Description                                                           |
| ------- | ------- | --------------------------------------------------------------------- |
| role    | bytes32 | keccak256 hash of the role. e.g. keccak256(&quot;TRANSFER_ROLE&quot;) |
| account | address | Address of the account for which the role is being checked.           |

#### Returns

| Name | Type | Description |
| ---- | ---- | ----------- |
| \_0  | bool | undefined   |

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

### mintTo

```solidity
function mintTo(address, string) external nonpayable
```

#### Parameters

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | address | undefined   |
| \_1  | string  | undefined   |

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

The tokenId assigned to the next new NFT to be minted.

#### Returns

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | uint256 | undefined   |

### onERC1155BatchReceived

```solidity
function onERC1155BatchReceived(address, address, uint256[], uint256[], bytes) external nonpayable returns (bytes4)
```

#### Parameters

| Name | Type      | Description |
| ---- | --------- | ----------- |
| \_0  | address   | undefined   |
| \_1  | address   | undefined   |
| \_2  | uint256[] | undefined   |
| \_3  | uint256[] | undefined   |
| \_4  | bytes     | undefined   |

#### Returns

| Name | Type   | Description |
| ---- | ------ | ----------- |
| \_0  | bytes4 | undefined   |

### onERC1155Received

```solidity
function onERC1155Received(address, address, uint256, uint256, bytes) external nonpayable returns (bytes4)
```

#### Parameters

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | address | undefined   |
| \_1  | address | undefined   |
| \_2  | uint256 | undefined   |
| \_3  | uint256 | undefined   |
| \_4  | bytes   | undefined   |

#### Returns

| Name | Type   | Description |
| ---- | ------ | ----------- |
| \_0  | bytes4 | undefined   |

### onERC721Received

```solidity
function onERC721Received(address, address, uint256, bytes) external nonpayable returns (bytes4)
```

_See {IERC721Receiver-onERC721Received}. Always returns `IERC721Receiver.onERC721Received.selector`._

#### Parameters

| Name | Type    | Description |
| ---- | ------- | ----------- |
| \_0  | address | undefined   |
| \_1  | address | undefined   |
| \_2  | uint256 | undefined   |
| \_3  | bytes   | undefined   |

#### Returns

| Name | Type   | Description |
| ---- | ------ | ----------- |
| \_0  | bytes4 | undefined   |

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

### renounceRole

```solidity
function renounceRole(bytes32 role, address account) external nonpayable
```

Revokes role from the account.

_Caller must have the `role`, with caller being the same as `account`. Emits {RoleRevoked Event}._

#### Parameters

| Name    | Type    | Description                                                           |
| ------- | ------- | --------------------------------------------------------------------- |
| role    | bytes32 | keccak256 hash of the role. e.g. keccak256(&quot;TRANSFER_ROLE&quot;) |
| account | address | Address of the account from which the role is being revoked.          |

### restrictTransfers

```solidity
function restrictTransfers(bool _toRestrict) external nonpayable
```

Restrict transfers of NFTs.

_Restricting transfers means revoking the TRANSFER_ROLE from address(0). Making transfers unrestricted means granting the TRANSFER_ROLE to address(0)._

#### Parameters

| Name         | Type | Description                           |
| ------------ | ---- | ------------------------------------- |
| \_toRestrict | bool | Whether to restrict transfers or not. |

### revokeRole

```solidity
function revokeRole(bytes32 role, address account) external nonpayable
```

Revokes role from an account.

_Caller must have admin role for the `role`. Emits {RoleRevoked Event}._

#### Parameters

| Name    | Type    | Description                                                           |
| ------- | ------- | --------------------------------------------------------------------- |
| role    | bytes32 | keccak256 hash of the role. e.g. keccak256(&quot;TRANSFER_ROLE&quot;) |
| account | address | Address of the account from which the role is being revoked.          |

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

_See ERC-165_

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

_Returns the URI for a given tokenId._

#### Parameters

| Name      | Type    | Description |
| --------- | ------- | ----------- |
| \_tokenId | uint256 | undefined   |

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

### unwrap

```solidity
function unwrap(uint256 _tokenId, address _recipient) external nonpayable
```

Unwrap a wrapped NFT to retrieve underlying ERC1155, ERC721, ERC20 tokens.

#### Parameters

| Name        | Type    | Description                                                                       |
| ----------- | ------- | --------------------------------------------------------------------------------- |
| \_tokenId   | uint256 | The token Id of the wrapped NFT to unwrap.                                        |
| \_recipient | address | The recipient of the underlying ERC1155, ERC721, ERC20 tokens of the wrapped NFT. |

### wrap

```solidity
function wrap(ITokenBundle.Token[] _tokensToWrap, string _uriForWrappedToken, address _recipient) external payable returns (uint256 tokenId)
```

#### Parameters

| Name                 | Type                 | Description |
| -------------------- | -------------------- | ----------- |
| \_tokensToWrap       | ITokenBundle.Token[] | undefined   |
| \_uriForWrappedToken | string               | undefined   |
| \_recipient          | address              | undefined   |

#### Returns

| Name    | Type    | Description |
| ------- | ------- | ----------- |
| tokenId | uint256 | undefined   |

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

### RoleAdminChanged

```solidity
event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole)
```

#### Parameters

| Name                        | Type    | Description |
| --------------------------- | ------- | ----------- |
| role `indexed`              | bytes32 | undefined   |
| previousAdminRole `indexed` | bytes32 | undefined   |
| newAdminRole `indexed`      | bytes32 | undefined   |

### RoleGranted

```solidity
event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender)
```

#### Parameters

| Name              | Type    | Description |
| ----------------- | ------- | ----------- |
| role `indexed`    | bytes32 | undefined   |
| account `indexed` | address | undefined   |
| sender `indexed`  | address | undefined   |

### RoleRevoked

```solidity
event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender)
```

#### Parameters

| Name              | Type    | Description |
| ----------------- | ------- | ----------- |
| role `indexed`    | bytes32 | undefined   |
| account `indexed` | address | undefined   |
| sender `indexed`  | address | undefined   |

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

### TokensUnwrapped

```solidity
event TokensUnwrapped(address indexed unwrapper, address indexed recipientOfWrappedContents, uint256 indexed tokenIdOfWrappedToken)
```

_Emitted when tokens are unwrapped._

#### Parameters

| Name                                 | Type    | Description |
| ------------------------------------ | ------- | ----------- |
| unwrapper `indexed`                  | address | undefined   |
| recipientOfWrappedContents `indexed` | address | undefined   |
| tokenIdOfWrappedToken `indexed`      | uint256 | undefined   |

### TokensWrapped

```solidity
event TokensWrapped(address indexed wrapper, address indexed recipientOfWrappedToken, uint256 indexed tokenIdOfWrappedToken, ITokenBundle.Token[] wrappedContents)
```

_Emitted when tokens are wrapped._

#### Parameters

| Name                              | Type                 | Description |
| --------------------------------- | -------------------- | ----------- |
| wrapper `indexed`                 | address              | undefined   |
| recipientOfWrappedToken `indexed` | address              | undefined   |
| tokenIdOfWrappedToken `indexed`   | uint256              | undefined   |
| wrappedContents                   | ITokenBundle.Token[] | undefined   |

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

### TransfersRestricted

```solidity
event TransfersRestricted(bool isRestricted)
```

#### Parameters

| Name         | Type | Description |
| ------------ | ---- | ----------- |
| isRestricted | bool | undefined   |

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
