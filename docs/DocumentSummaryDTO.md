# DocumentSummaryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**current_version** | **int** |  | [optional] 
**locked** | **bool** |  | [optional] 
**locked_by** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.document_summary_dto import DocumentSummaryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DocumentSummaryDTO from a JSON string
document_summary_dto_instance = DocumentSummaryDTO.from_json(json)
# print the JSON string representation of the object
print(DocumentSummaryDTO.to_json())

# convert the object into a dict
document_summary_dto_dict = document_summary_dto_instance.to_dict()
# create an instance of DocumentSummaryDTO from a dict
document_summary_dto_from_dict = DocumentSummaryDTO.from_dict(document_summary_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


