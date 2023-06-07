
# Signature Options

## Structure

`Signature Options`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `title` | `String` | Required | The title text to display in the signature capture flow on the Terminal.<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `250` |
| `body` | `String` | Required | The body text to display in the signature capture flow on the Terminal.<br>**Constraints**: *Minimum Length*: `1`, *Maximum Length*: `10000` |
| `signature` | [`Array<Signature Image Hash>`](../../doc/models/signature-image.md) | Optional | An image representation of the collected signature. |

## Example (as JSON)

```json
{
  "title": "title4",
  "body": "body6",
  "signature": [
    {
      "image_type": "image_type8",
      "data": "data2"
    }
  ]
}
```
