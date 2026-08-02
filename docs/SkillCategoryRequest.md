# SkillCategoryRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**parent_id** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.skill_category_request import SkillCategoryRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SkillCategoryRequest from a JSON string
skill_category_request_instance = SkillCategoryRequest.from_json(json)
# print the JSON string representation of the object
print(SkillCategoryRequest.to_json())

# convert the object into a dict
skill_category_request_dict = skill_category_request_instance.to_dict()
# create an instance of SkillCategoryRequest from a dict
skill_category_request_from_dict = SkillCategoryRequest.from_dict(skill_category_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


