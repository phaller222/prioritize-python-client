# ProjectGoalProperty


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**type** | **str** |  | 

## Example

```python
from prioritize_client.models.project_goal_property import ProjectGoalProperty

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectGoalProperty from a JSON string
project_goal_property_instance = ProjectGoalProperty.from_json(json)
# print the JSON string representation of the object
print(ProjectGoalProperty.to_json())

# convert the object into a dict
project_goal_property_dict = project_goal_property_instance.to_dict()
# create an instance of ProjectGoalProperty from a dict
project_goal_property_from_dict = ProjectGoalProperty.from_dict(project_goal_property_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


