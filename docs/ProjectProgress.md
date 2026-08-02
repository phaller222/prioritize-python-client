# ProjectProgress


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**overall_percentage** | **int** |  | [optional] 
**goals** | [**List[GoalProgress]**](GoalProgress.md) |  | [optional] 

## Example

```python
from prioritize_client.models.project_progress import ProjectProgress

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectProgress from a JSON string
project_progress_instance = ProjectProgress.from_json(json)
# print the JSON string representation of the object
print(ProjectProgress.to_json())

# convert the object into a dict
project_progress_dict = project_progress_instance.to_dict()
# create an instance of ProjectProgress from a dict
project_progress_from_dict = ProjectProgress.from_dict(project_progress_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


