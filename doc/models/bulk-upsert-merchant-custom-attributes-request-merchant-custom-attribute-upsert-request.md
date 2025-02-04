
# Bulk Upsert Merchant Custom Attributes Request Merchant Custom Attribute Upsert Request

Represents an individual upsert request in a [BulkUpsertMerchantCustomAttributes](../../doc/api/merchant-custom-attributes.md#bulk-upsert-merchant-custom-attributes)
request. An individual request contains a merchant ID, the custom attribute to create or update,
and an optional idempotency key.

## Structure

`Bulk Upsert Merchant Custom Attributes Request Merchant Custom Attribute Upsert Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_id` | `String` | Required | The ID of the target [merchant](entity:Merchant).<br>**Constraints**: *Minimum Length*: `1` |
| `custom_attribute` | [`Custom Attribute Hash`](../../doc/models/custom-attribute.md) | Required | A custom attribute value. Each custom attribute value has a corresponding<br>`CustomAttributeDefinition` object. |
| `idempotency_key` | `String` | Optional | A unique identifier for this individual upsert request, used to ensure idempotency.<br>For more information, see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency).<br>**Constraints**: *Maximum Length*: `45` |

## Example (as JSON)

```json
{
  "merchant_id": "merchant_id0",
  "custom_attribute": {
    "key": "key2",
    "value": {
      "key1": "val1",
      "key2": "val2"
    },
    "version": 102,
    "visibility": "VISIBILITY_READ_ONLY",
    "definition": {
      "key": "key2",
      "schema": {
        "key1": "val1",
        "key2": "val2"
      },
      "name": "name2",
      "description": "description2",
      "visibility": "VISIBILITY_READ_ONLY"
    }
  },
  "idempotency_key": "idempotency_key6"
}
```

