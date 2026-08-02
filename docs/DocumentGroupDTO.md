# DocumentGroupDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**department_id** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.document_group_dto import DocumentGroupDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DocumentGroupDTO from a JSON string
document_group_dto_instance = DocumentGroupDTO.from_json(json)
# print the JSON string representation of the object
print(DocumentGroupDTO.to_json())

# convert the object into a dict
document_group_dto_dict = document_group_dto_instance.to_dict()
# create an instance of DocumentGroupDTO from a dict
document_group_dto_from_dict = DocumentGroupDTO.from_dict(document_group_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


