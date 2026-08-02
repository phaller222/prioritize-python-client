# SkillRecordRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**skill_id** | **int** |  | [optional] 
**enthusiasm** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.skill_record_request import SkillRecordRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SkillRecordRequest from a JSON string
skill_record_request_instance = SkillRecordRequest.from_json(json)
# print the JSON string representation of the object
print(SkillRecordRequest.to_json())

# convert the object into a dict
skill_record_request_dict = skill_record_request_instance.to_dict()
# create an instance of SkillRecordRequest from a dict
skill_record_request_from_dict = SkillRecordRequest.from_dict(skill_record_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


