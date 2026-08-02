# TaskScheduleDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**project_id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**task_name** | **str** |  | [optional] 
**task_description** | **str** |  | [optional] 
**task_priority** | **int** |  | [optional] 
**cron_expression** | **str** |  | [optional] 
**zone_id** | **str** |  | [optional] 
**enabled** | **bool** |  | [optional] 
**next_fire_at** | **datetime** |  | [optional] 
**last_fired_at** | **datetime** |  | [optional] 

## Example

```python
from prioritize_client.models.task_schedule_dto import TaskScheduleDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TaskScheduleDTO from a JSON string
task_schedule_dto_instance = TaskScheduleDTO.from_json(json)
# print the JSON string representation of the object
print(TaskScheduleDTO.to_json())

# convert the object into a dict
task_schedule_dto_dict = task_schedule_dto_instance.to_dict()
# create an instance of TaskScheduleDTO from a dict
task_schedule_dto_from_dict = TaskScheduleDTO.from_dict(task_schedule_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


