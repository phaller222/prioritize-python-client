# DocumentCheckInRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file** | **bytearray** |  | 

## Example

```python
from prioritize_client.models.document_check_in_request import DocumentCheckInRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DocumentCheckInRequest from a JSON string
document_check_in_request_instance = DocumentCheckInRequest.from_json(json)
# print the JSON string representation of the object
print(DocumentCheckInRequest.to_json())

# convert the object into a dict
document_check_in_request_dict = document_check_in_request_instance.to_dict()
# create an instance of DocumentCheckInRequest from a dict
document_check_in_request_from_dict = DocumentCheckInRequest.from_dict(document_check_in_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


