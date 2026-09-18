# QualificationLevelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**cost_rate** | **float** |  | [optional] 
**cost_currency** | **str** |  | [optional] 
**cost_rate_unit** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.qualification_level_dto import QualificationLevelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of QualificationLevelDTO from a JSON string
qualification_level_dto_instance = QualificationLevelDTO.from_json(json)
# print the JSON string representation of the object
print(QualificationLevelDTO.to_json())

# convert the object into a dict
qualification_level_dto_dict = qualification_level_dto_instance.to_dict()
# create an instance of QualificationLevelDTO from a dict
qualification_level_dto_from_dict = QualificationLevelDTO.from_dict(qualification_level_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


