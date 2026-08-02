# ProcessInstanceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**process_key** | **str** |  | [optional] 
**definition_id** | **int** |  | [optional] 
**business_key** | **str** |  | [optional] 
**project_id** | **int** |  | [optional] 
**task_id** | **int** |  | [optional] 
**running** | **bool** |  | [optional] 
**started_at** | **datetime** |  | [optional] 
**started_by** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.process_instance_dto import ProcessInstanceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessInstanceDTO from a JSON string
process_instance_dto_instance = ProcessInstanceDTO.from_json(json)
# print the JSON string representation of the object
print(ProcessInstanceDTO.to_json())

# convert the object into a dict
process_instance_dto_dict = process_instance_dto_instance.to_dict()
# create an instance of ProcessInstanceDTO from a dict
process_instance_dto_from_dict = ProcessInstanceDTO.from_dict(process_instance_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


