# ProjectDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**priority** | **int** |  | [optional] 
**begin_date** | **date** |  | [optional] 
**due_date** | **date** |  | [optional] 
**max_man_days** | **int** |  | [optional] 
**manager_id** | **int** |  | [optional] 
**member_ids** | **List[int]** |  | [optional] 
**blackboard_id** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.project_dto import ProjectDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectDTO from a JSON string
project_dto_instance = ProjectDTO.from_json(json)
# print the JSON string representation of the object
print(ProjectDTO.to_json())

# convert the object into a dict
project_dto_dict = project_dto_instance.to_dict()
# create an instance of ProjectDTO from a dict
project_dto_from_dict = ProjectDTO.from_dict(project_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


