# TaskRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**priority** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.task_request import TaskRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TaskRequest from a JSON string
task_request_instance = TaskRequest.from_json(json)
# print the JSON string representation of the object
print(TaskRequest.to_json())

# convert the object into a dict
task_request_dict = task_request_instance.to_dict()
# create an instance of TaskRequest from a dict
task_request_from_dict = TaskRequest.from_dict(task_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


