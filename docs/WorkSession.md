# WorkSession


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_from** | **datetime** |  | [optional] 
**until** | **datetime** |  | [optional] 
**seconds** | **int** |  | [optional] 
**running** | **bool** |  | [optional] 

## Example

```python
from prioritize_client.models.work_session import WorkSession

# TODO update the JSON string below
json = "{}"
# create an instance of WorkSession from a JSON string
work_session_instance = WorkSession.from_json(json)
# print the JSON string representation of the object
print(WorkSession.to_json())

# convert the object into a dict
work_session_dict = work_session_instance.to_dict()
# create an instance of WorkSession from a dict
work_session_from_dict = WorkSession.from_dict(work_session_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


