
# Search Terminal Refunds Request

## Structure

`Search Terminal Refunds Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `query` | [`Terminal Refund Query Hash`](../../doc/models/terminal-refund-query.md) | Optional | - |
| `cursor` | `String` | Optional | A pagination cursor returned by a previous call to this endpoint.<br>Provide this cursor to retrieve the next set of results for the original query. |
| `limit` | `Integer` | Optional | Limits the number of results returned for a single request.<br>**Constraints**: `>= 1`, `<= 100` |

## Example (as JSON)

```json
{
  "limit": 1,
  "query": {
    "filter": {
      "status": "COMPLETED",
      "device_id": "device_id0",
      "created_at": {
        "start_at": "start_at4",
        "end_at": "end_at8"
      }
    },
    "sort": {
      "sort_order": "sort_order8"
    }
  },
  "cursor": "cursor6"
}
```

