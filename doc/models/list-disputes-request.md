
# List Disputes Request

Defines the request parameters for the `ListDisputes` endpoint.

## Structure

`List Disputes Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cursor` | `String` | Optional | A pagination cursor returned by a previous call to this endpoint.<br>Provide this cursor to retrieve the next set of results for the original query.<br>For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). |
| `states` | [`Array<String (Dispute State)>`](../../doc/models/dispute-state.md) | Optional | The dispute states used to filter the result. If not specified, the endpoint returns all disputes.<br>See [DisputeState](#type-disputestate) for possible values |
| `location_id` | `String` | Optional | The ID of the location for which to return a list of disputes.<br>If not specified, the endpoint returns disputes associated with all locations.<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `40` |

## Example (as JSON)

```json
{
  "cursor": "cursor6",
  "states": [
    "PROCESSING",
    "WON"
  ],
  "location_id": "location_id4"
}
```

