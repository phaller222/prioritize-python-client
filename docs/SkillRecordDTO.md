# SkillRecordDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**skill_id** | **int** |  | [optional] 
**skill_name** | **str** |  | [optional] 
**enthusiasm** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.skill_record_dto import SkillRecordDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SkillRecordDTO from a JSON string
skill_record_dto_instance = SkillRecordDTO.from_json(json)
# print the JSON string representation of the object
print(SkillRecordDTO.to_json())

# convert the object into a dict
skill_record_dto_dict = skill_record_dto_instance.to_dict()
# create an instance of SkillRecordDTO from a dict
skill_record_dto_from_dict = SkillRecordDTO.from_dict(skill_record_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


