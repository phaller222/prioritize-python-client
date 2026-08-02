# DocumentGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**department_id** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.document_group_request import DocumentGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DocumentGroupRequest from a JSON string
document_group_request_instance = DocumentGroupRequest.from_json(json)
# print the JSON string representation of the object
print(DocumentGroupRequest.to_json())

# convert the object into a dict
document_group_request_dict = document_group_request_instance.to_dict()
# create an instance of DocumentGroupRequest from a dict
document_group_request_from_dict = DocumentGroupRequest.from_dict(document_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


