
# Bulk Upsert Location Custom Attributes Response

Represents a [BulkUpsertLocationCustomAttributes](../../doc/api/location-custom-attributes.md#bulk-upsert-location-custom-attributes) response,
which contains a map of responses that each corresponds to an individual upsert request.

## Structure

`Bulk Upsert Location Custom Attributes Response`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `values` | [`Hash String Bulk Upsert Location Custom Attributes Response Location Custom Attribute Upsert Response Hash`](../../doc/models/bulk-upsert-location-custom-attributes-response-location-custom-attribute-upsert-response.md) | Optional | A map of responses that correspond to individual upsert requests. Each response has the<br>same ID as the corresponding request and contains either a `location_id` and `custom_attribute` or an `errors` field. |
| `errors` | [`Array<Error Hash>`](../../doc/models/error.md) | Optional | Any errors that occurred during the request. |

## Example (as JSON)

```json
{
  "values": {
    "key0": {
      "location_id": "location_id4",
      "custom_attribute": {
        "key": "key8",
        "value": {
          "key1": "val1",
          "key2": "val2"
        },
        "version": 82,
        "visibility": "VISIBILITY_READ_WRITE_VALUES",
        "definition": {
          "key": "key8",
          "schema": {
            "key1": "val1",
            "key2": "val2"
          },
          "name": "name8",
          "description": "description8",
          "visibility": "VISIBILITY_HIDDEN"
        }
      },
      "errors": [
        {
          "category": "REFUND_ERROR",
          "code": "INVALID_ENUM_VALUE",
          "detail": "detail1",
          "field": "field9"
        }
      ]
    },
    "key1": {
      "location_id": "location_id5",
      "custom_attribute": {
        "key": "key9",
        "value": {
          "key1": "val1",
          "key2": "val2"
        },
        "version": 83,
        "visibility": "VISIBILITY_READ_ONLY",
        "definition": {
          "key": "key9",
          "schema": {
            "key1": "val1",
            "key2": "val2"
          },
          "name": "name9",
          "description": "description9",
          "visibility": "VISIBILITY_READ_ONLY"
        }
      },
      "errors": [
        {
          "category": "MERCHANT_SUBSCRIPTION_ERROR",
          "code": "INVALID_CONTENT_TYPE",
          "detail": "detail2",
          "field": "field0"
        },
        {
          "category": "EXTERNAL_VENDOR_ERROR",
          "code": "INVALID_FORM_VALUE",
          "detail": "detail3",
          "field": "field1"
        }
      ]
    },
    "key2": {
      "location_id": "location_id6",
      "custom_attribute": {
        "key": "key0",
        "value": {
          "key1": "val1",
          "key2": "val2"
        },
        "version": 84,
        "visibility": "VISIBILITY_HIDDEN",
        "definition": {
          "key": "key0",
          "schema": {
            "key1": "val1",
            "key2": "val2"
          },
          "name": "name0",
          "description": "description0",
          "visibility": "VISIBILITY_READ_WRITE_VALUES"
        }
      },
      "errors": [
        {
          "category": "EXTERNAL_VENDOR_ERROR",
          "code": "INVALID_FORM_VALUE",
          "detail": "detail3",
          "field": "field1"
        },
        {
          "category": "API_ERROR",
          "code": "CUSTOMER_NOT_FOUND",
          "detail": "detail4",
          "field": "field2"
        },
        {
          "category": "AUTHENTICATION_ERROR",
          "code": "ONE_INSTRUMENT_EXPECTED",
          "detail": "detail5",
          "field": "field3"
        }
      ]
    }
  },
  "errors": [
    {
      "category": "REFUND_ERROR",
      "code": "MERCHANT_SUBSCRIPTION_NOT_FOUND",
      "detail": "detail1",
      "field": "field9"
    },
    {
      "category": "MERCHANT_SUBSCRIPTION_ERROR",
      "code": "BAD_REQUEST",
      "detail": "detail2",
      "field": "field0"
    },
    {
      "category": "EXTERNAL_VENDOR_ERROR",
      "code": "MISSING_REQUIRED_PARAMETER",
      "detail": "detail3",
      "field": "field1"
    }
  ]
}
```

