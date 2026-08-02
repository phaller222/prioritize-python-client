# ProcessDefinitionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**process_key** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**document_info_id** | **int** |  | [optional] 
**state** | **str** |  | [optional] 
**deployment_id** | **str** |  | [optional] 
**deployed_version** | **int** |  | [optional] 
**deployed_at** | **datetime** |  | [optional] 
**deployed_by** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.process_definition_dto import ProcessDefinitionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessDefinitionDTO from a JSON string
process_definition_dto_instance = ProcessDefinitionDTO.from_json(json)
# print the JSON string representation of the object
print(ProcessDefinitionDTO.to_json())

# convert the object into a dict
process_definition_dto_dict = process_definition_dto_instance.to_dict()
# create an instance of ProcessDefinitionDTO from a dict
process_definition_dto_from_dict = ProcessDefinitionDTO.from_dict(process_definition_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


