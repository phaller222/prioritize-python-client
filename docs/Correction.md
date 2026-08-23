# Correction


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | **str** |  | [optional] 
**corrected_by_id** | **int** |  | [optional] 
**corrected_by** | **str** |  | [optional] 
**corrected_at** | **datetime** |  | [optional] 
**reason** | **str** |  | [optional] 
**original_from** | **datetime** |  | [optional] 
**original_until** | **datetime** |  | [optional] 

## Example

```python
from prioritize_client.models.correction import Correction

# TODO update the JSON string below
json = "{}"
# create an instance of Correction from a JSON string
correction_instance = Correction.from_json(json)
# print the JSON string representation of the object
print(Correction.to_json())

# convert the object into a dict
correction_dict = correction_instance.to_dict()
# create an instance of Correction from a dict
correction_from_dict = Correction.from_dict(correction_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


