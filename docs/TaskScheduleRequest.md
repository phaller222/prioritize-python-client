# TaskScheduleRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**task_name** | **str** |  | [optional] 
**task_description** | **str** |  | [optional] 
**task_priority** | **int** |  | [optional] 
**cron_expression** | **str** |  | [optional] 
**zone_id** | **str** |  | [optional] 
**enabled** | **bool** |  | [optional] 

## Example

```python
from prioritize_client.models.task_schedule_request import TaskScheduleRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TaskScheduleRequest from a JSON string
task_schedule_request_instance = TaskScheduleRequest.from_json(json)
# print the JSON string representation of the object
print(TaskScheduleRequest.to_json())

# convert the object into a dict
task_schedule_request_dict = task_schedule_request_instance.to_dict()
# create an instance of TaskScheduleRequest from a dict
task_schedule_request_from_dict = TaskScheduleRequest.from_dict(task_schedule_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


