# QualificationLevelRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | What the level is called, e.g. Geselle | [optional] 
**description** | **str** | What the level means in this business | [optional] 
**cost_rate** | **float** | What an hour, day or use of this qualification costs. Set with currency and unit, or omit all three. | [optional] 
**cost_currency** | **str** | ISO 4217 code of the cost rate | [optional] 
**cost_rate_unit** | **str** | What the cost rate is charged per | [optional] 

## Example

```python
from prioritize_client.models.qualification_level_request import QualificationLevelRequest

# TODO update the JSON string below
json = "{}"
# create an instance of QualificationLevelRequest from a JSON string
qualification_level_request_instance = QualificationLevelRequest.from_json(json)
# print the JSON string representation of the object
print(QualificationLevelRequest.to_json())

# convert the object into a dict
qualification_level_request_dict = qualification_level_request_instance.to_dict()
# create an instance of QualificationLevelRequest from a dict
qualification_level_request_from_dict = QualificationLevelRequest.from_dict(qualification_level_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


