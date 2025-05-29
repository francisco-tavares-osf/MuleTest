%dw 2.0
output application/json
var currentDateTime = now() as String {format: "yyyy-MM-dd'T'HH:mm:ssZ"}
---
{
  status: "Success",
  dateTime: currentDateTime,
  apiName: p('apiName'),
  apiVersion: p('apiVersion')
} as Object {encoding: "UTF-8", mediaType: "application/json"}