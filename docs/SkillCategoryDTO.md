# SkillCategoryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**parent_id** | **int** |  | [optional] 
**parent_name** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.skill_category_dto import SkillCategoryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SkillCategoryDTO from a JSON string
skill_category_dto_instance = SkillCategoryDTO.from_json(json)
# print the JSON string representation of the object
print(SkillCategoryDTO.to_json())

# convert the object into a dict
skill_category_dto_dict = skill_category_dto_instance.to_dict()
# create an instance of SkillCategoryDTO from a dict
skill_category_dto_from_dict = SkillCategoryDTO.from_dict(skill_category_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


