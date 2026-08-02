# GoalProgress


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**goal_id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**percentage** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.goal_progress import GoalProgress

# TODO update the JSON string below
json = "{}"
# create an instance of GoalProgress from a JSON string
goal_progress_instance = GoalProgress.from_json(json)
# print the JSON string representation of the object
print(GoalProgress.to_json())

# convert the object into a dict
goal_progress_dict = goal_progress_instance.to_dict()
# create an instance of GoalProgress from a dict
goal_progress_from_dict = GoalProgress.from_dict(goal_progress_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


