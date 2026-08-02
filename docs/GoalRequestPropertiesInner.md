# GoalRequestPropertiesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**type** | **str** |  | 
**min** | **float** |  | [optional] 
**max** | **float** |  | [optional] 

## Example

```python
from prioritize_client.models.goal_request_properties_inner import GoalRequestPropertiesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GoalRequestPropertiesInner from a JSON string
goal_request_properties_inner_instance = GoalRequestPropertiesInner.from_json(json)
# print the JSON string representation of the object
print(GoalRequestPropertiesInner.to_json())

# convert the object into a dict
goal_request_properties_inner_dict = goal_request_properties_inner_instance.to_dict()
# create an instance of GoalRequestPropertiesInner from a dict
goal_request_properties_inner_from_dict = GoalRequestPropertiesInner.from_dict(goal_request_properties_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


