# GoalRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**properties** | [**List[GoalRequestPropertiesInner]**](GoalRequestPropertiesInner.md) |  | [optional] 

## Example

```python
from prioritize_client.models.goal_request import GoalRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GoalRequest from a JSON string
goal_request_instance = GoalRequest.from_json(json)
# print the JSON string representation of the object
print(GoalRequest.to_json())

# convert the object into a dict
goal_request_dict = goal_request_instance.to_dict()
# create an instance of GoalRequest from a dict
goal_request_from_dict = GoalRequest.from_dict(goal_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


