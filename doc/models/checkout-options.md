
# Checkout Options

## Structure

`Checkout Options`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `allow_tipping` | `TrueClass \| FalseClass` | Optional | Indicates whether the payment allows tipping. |
| `custom_fields` | [`Array<Custom Field Hash>`](../../doc/models/custom-field.md) | Optional | The custom fields requesting information from the buyer. |
| `subscription_plan_id` | `String` | Optional | The ID of the subscription plan for the buyer to pay and subscribe.<br>For more information, see [Subscription Plan Checkout](https://developer.squareup.com/docs/checkout-api/subscription-plan-checkout).<br>**Constraints**: *Maximum Length*: `255` |
| `redirect_url` | `String` | Optional | The confirmation page URL to redirect the buyer to after Square processes the payment.<br>**Constraints**: *Maximum Length*: `2048` |
| `merchant_support_email` | `String` | Optional | The email address that buyers can use to contact the seller.<br>**Constraints**: *Maximum Length*: `256` |
| `ask_for_shipping_address` | `TrueClass \| FalseClass` | Optional | Indicates whether to include the address fields in the payment form. |
| `accepted_payment_methods` | [`Accepted Payment Methods Hash`](../../doc/models/accepted-payment-methods.md) | Optional | - |
| `app_fee_money` | [`Money Hash`](../../doc/models/money.md) | Optional | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. |
| `shipping_fee` | [`Shipping Fee Hash`](../../doc/models/shipping-fee.md) | Optional | - |
| `enable_coupon` | `TrueClass \| FalseClass` | Optional | Indicates whether to include the `Add coupon` section for the buyer to provide a Square marketing coupon in the payment form. |
| `enable_loyalty` | `TrueClass \| FalseClass` | Optional | Indicates whether to include the `REWARDS` section for the buyer to opt in to loyalty, redeem rewards in the payment form, or both. |

## Example (as JSON)

```json
{
  "allow_tipping": false,
  "custom_fields": [
    {
      "title": "title9"
    },
    {
      "title": "title0"
    },
    {
      "title": "title1"
    }
  ],
  "subscription_plan_id": "subscription_plan_id2",
  "redirect_url": "redirect_url2",
  "merchant_support_email": "merchant_support_email8"
}
```

