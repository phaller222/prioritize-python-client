# TaskStatusRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.task_status_request import TaskStatusRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TaskStatusRequest from a JSON string
task_status_request_instance = TaskStatusRequest.from_json(json)
# print the JSON string representation of the object
print(TaskStatusRequest.to_json())

# convert the object into a dict
task_status_request_dict = task_status_request_instance.to_dict()
# create an instance of TaskStatusRequest from a dict
task_status_request_from_dict = TaskStatusRequest.from_dict(task_status_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


