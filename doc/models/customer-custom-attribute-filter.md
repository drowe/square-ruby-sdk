
# Customer Custom Attribute Filter

The custom attribute filter. Use this filter in a set of [custom attribute filters](../../doc/models/customer-custom-attribute-filters.md) to search
based on the value or last updated date of a customer-related [custom attribute](../../doc/models/custom-attribute.md).

## Structure

`Customer Custom Attribute Filter`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `key` | `String` | Required | The `key` of the [custom attribute](entity:CustomAttribute) to filter by. The key is the identifier of the custom attribute<br>(and the corresponding custom attribute definition) and can be retrieved using the [Customer Custom Attributes API](api:CustomerCustomAttributes). |
| `filter` | [`Customer Custom Attribute Filter Value Hash`](../../doc/models/customer-custom-attribute-filter-value.md) | Optional | A type-specific filter used in a [custom attribute filter](../../doc/models/customer-custom-attribute-filter.md) to search based on the value<br>of a customer-related [custom attribute](../../doc/models/custom-attribute.md). |
| `updated_at` | [`Time Range Hash`](../../doc/models/time-range.md) | Optional | Represents a generic time range. The start and end values are<br>represented in RFC 3339 format. Time ranges are customized to be<br>inclusive or exclusive based on the needs of a particular endpoint.<br>Refer to the relevant endpoint-specific documentation to determine<br>how time ranges are handled. |

## Example (as JSON)

```json
{
  "key": "key0",
  "filter": {
    "email": {
      "exact": "exact2",
      "fuzzy": "fuzzy8"
    },
    "phone": {
      "exact": "exact6",
      "fuzzy": "fuzzy2"
    },
    "text": {
      "exact": "exact6",
      "fuzzy": "fuzzy8"
    },
    "selection": {
      "all": [
        "all7"
      ],
      "any": [
        "any2",
        "any3"
      ],
      "none": [
        "none7"
      ]
    },
    "date": {
      "start_at": "start_at2",
      "end_at": "end_at0"
    }
  },
  "updated_at": {
    "start_at": "start_at6",
    "end_at": "end_at6"
  }
}
```

