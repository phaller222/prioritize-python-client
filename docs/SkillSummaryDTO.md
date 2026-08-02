# SkillSummaryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**keywords** | **str** |  | [optional] 
**category_id** | **int** |  | [optional] 
**category_name** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.skill_summary_dto import SkillSummaryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SkillSummaryDTO from a JSON string
skill_summary_dto_instance = SkillSummaryDTO.from_json(json)
# print the JSON string representation of the object
print(SkillSummaryDTO.to_json())

# convert the object into a dict
skill_summary_dto_dict = skill_summary_dto_instance.to_dict()
# create an instance of SkillSummaryDTO from a dict
skill_summary_dto_from_dict = SkillSummaryDTO.from_dict(skill_summary_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


