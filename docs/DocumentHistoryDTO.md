# DocumentHistoryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **int** |  | [optional] 
**filename** | **str** |  | [optional] 
**modified_by** | **str** |  | [optional] 
**comment** | **str** |  | [optional] 
**modified_at** | **datetime** |  | [optional] 

## Example

```python
from prioritize_client.models.document_history_dto import DocumentHistoryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DocumentHistoryDTO from a JSON string
document_history_dto_instance = DocumentHistoryDTO.from_json(json)
# print the JSON string representation of the object
print(DocumentHistoryDTO.to_json())

# convert the object into a dict
document_history_dto_dict = document_history_dto_instance.to_dict()
# create an instance of DocumentHistoryDTO from a dict
document_history_dto_from_dict = DocumentHistoryDTO.from_dict(document_history_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


