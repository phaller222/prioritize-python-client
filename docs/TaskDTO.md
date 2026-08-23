# TaskDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**priority** | **int** |  | [optional] 
**task_status** | **str** |  | [optional] 
**assignee_id** | **int** |  | [optional] 
**goal_id** | **int** |  | [optional] 
**process_instance_id** | **str** |  | [optional] 
**tracking_for_me** | **bool** |  | [optional] 
**running_count** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.task_dto import TaskDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TaskDTO from a JSON string
task_dto_instance = TaskDTO.from_json(json)
# print the JSON string representation of the object
print(TaskDTO.to_json())

# convert the object into a dict
task_dto_dict = task_dto_instance.to_dict()
# create an instance of TaskDTO from a dict
task_dto_from_dict = TaskDTO.from_dict(task_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


