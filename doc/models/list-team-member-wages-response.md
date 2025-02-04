
# List Team Member Wages Response

The response to a request for a set of `TeamMemberWage` objects. The response contains
a set of `TeamMemberWage` objects.

## Structure

`List Team Member Wages Response`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `team_member_wages` | [`Array<Team Member Wage Hash>`](../../doc/models/team-member-wage.md) | Optional | A page of `TeamMemberWage` results. |
| `cursor` | `String` | Optional | The value supplied in the subsequent request to fetch the next page<br>of `TeamMemberWage` results. |
| `errors` | [`Array<Error Hash>`](../../doc/models/error.md) | Optional | Any errors that occurred during the request. |

## Example (as JSON)

```json
{
  "cursor": "2fofTniCgT0yIPAq26kmk0YyFQJZfbWkh73OOnlTHmTAx13NgED",
  "team_member_wages": [
    {
      "hourly_rate": {
        "amount": 3250,
        "currency": "USD"
      },
      "id": "pXS3qCv7BERPnEGedM4S8mhm",
      "job_id": "jxJNN6eCJsLrhg5UFJrDWDGE",
      "team_member_id": "33fJchumvVdJwxV0H6L9",
      "title": "Manager"
    },
    {
      "hourly_rate": {
        "amount": 2600,
        "currency": "USD"
      },
      "id": "rZduCkzYDUVL3ovh1sQgbue6",
      "job_id": "gcbz15vKGnMKmaWJJ152kjim",
      "team_member_id": "33fJchumvVdJwxV0H6L9",
      "title": "Cook"
    },
    {
      "hourly_rate": {
        "amount": 1600,
        "currency": "USD"
      },
      "id": "FxLbs5KpPUHa8wyt5ctjubDX",
      "job_id": "FzbJAtt9qEWncK1BWgVCxQ6M",
      "team_member_id": "33fJchumvVdJwxV0H6L9",
      "title": "Barista"
    },
    {
      "hourly_rate": {
        "amount": 1700,
        "currency": "USD"
      },
      "id": "vD1wCgijMDR3cX5TPnu7VXto",
      "job_id": "N4YKVLzFj3oGtNocqoYHYpW3",
      "team_member_id": "33fJchumvVdJwxV0H6L9",
      "title": "Cashier"
    }
  ],
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

