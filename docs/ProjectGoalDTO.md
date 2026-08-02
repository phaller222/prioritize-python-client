# ProjectGoalDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.project_goal_dto import ProjectGoalDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectGoalDTO from a JSON string
project_goal_dto_instance = ProjectGoalDTO.from_json(json)
# print the JSON string representation of the object
print(ProjectGoalDTO.to_json())

# convert the object into a dict
project_goal_dto_dict = project_goal_dto_instance.to_dict()
# create an instance of ProjectGoalDTO from a dict
project_goal_dto_from_dict = ProjectGoalDTO.from_dict(project_goal_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


