# WorkSessionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_from** | **datetime** |  | [optional] 
**until** | **datetime** |  | [optional] 
**reason** | **str** |  | [optional] 
**user_id** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.work_session_request import WorkSessionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of WorkSessionRequest from a JSON string
work_session_request_instance = WorkSessionRequest.from_json(json)
# print the JSON string representation of the object
print(WorkSessionRequest.to_json())

# convert the object into a dict
work_session_request_dict = work_session_request_instance.to_dict()
# create an instance of WorkSessionRequest from a dict
work_session_request_from_dict = WorkSessionRequest.from_dict(work_session_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


