# Event API Specification

This API allows its consumers to retrieve, create, edit and delete technology conferences/events and their sessions. For additional information, please refer to the `Getting Started` section of [this link](https://github.com/peclevens/event-apis-specs).


## Date Format
All timestamps, both those sent in requests and those returned in responses, should be formatted as specified in the [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt). The preferred way to pass in a date is by converting the time to UTC such as this: 2019-10-04T06:00:00Z.

## Error example
```javascript
{
    "status": 409,
    "code": "sample_duplicate_item_code",
    "requestId": "fbff2587-9de4-4aad-9dd5-c9739d21e20c",
    "type": "error",
    "message": "Item should not be duplicated",
    "timestamp": "2019-12-10T12:34:04Z",
    "contextInfo": {
        "validationErrors": [
            {
                "field": "fieldName",
                "message": "FieldName does not allow duplicate"
            }
        ]
    }
}
```


## Pagination example

```javascript
{
  "data": [],
  "pagination": {
    "totalPages": 4,
    "totalElements": 25,
    "page": 0,
    "size": 25,
    "numberOfElements": 100
  }
}
```


## HTTP Status Codes

Status Code | Description
------------ | -------------
**200** | Success
**201** | Created
**202** | Accepted
**204** | No Content
**302** | Moved Permanently
**304** | Not Modified
**400** | Bad Request
**401** | Unauthorized
**403** | Forbidden
**404** | Not Found
**405** | Method Not Allowed
**406** | Not Acceptable
**409** | Conflict
**410** | Gone
**412** | Precondition Failed
**422** | Unprocessable Entity
**429** | Too Many Requests
**500** | Internal Server Error
**503** | Service Unavailable


## Detail error code table
Status Code | Code | Message
------------ | ------------- | -------------
**409** | duplicate\_event\_name | Event name cannot be duplicate


## Author Contact Information

- [Linkedin](https://www.linkedin.com/in/peclevens)
- [Facebook](https://www.facebook.com/peclevens)
- [Twitter](https://twitter.com/peclevens)