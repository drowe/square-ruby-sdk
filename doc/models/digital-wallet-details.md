
# Digital Wallet Details

Additional details about `WALLET` type payments. Contains only non-confidential information.

## Structure

`Digital Wallet Details`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | `String` | Optional | The status of the `WALLET` payment. The status can be `AUTHORIZED`, `CAPTURED`, `VOIDED`, or<br>`FAILED`.<br>**Constraints**: *Maximum Length*: `50` |
| `brand` | `String` | Optional | The brand used for the `WALLET` payment. The brand can be `CASH_APP`, `PAYPAY` or `UNKNOWN`.<br>**Constraints**: *Maximum Length*: `50` |
| `cash_app_details` | [`Cash App Details Hash`](../../doc/models/cash-app-details.md) | Optional | Additional details about `WALLET` type payments with the `brand` of `CASH_APP`. |

## Example (as JSON)

```json
{
  "status": "status8",
  "brand": "brand4",
  "cash_app_details": {
    "buyer_full_name": "buyer_full_name2",
    "buyer_country_code": "buyer_country_code8",
    "buyer_cashtag": "buyer_cashtag4"
  }
}
```

