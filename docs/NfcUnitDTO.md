# NfcUnitDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**uuid** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**payload** | **str** |  | [optional] 
**sequence_number** | **int** |  | [optional] 
**last_scan_time** | **datetime** |  | [optional] 
**resource_id** | **int** |  | [optional] 
**bound_task_id** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.nfc_unit_dto import NfcUnitDTO

# TODO update the JSON string below
json = "{}"
# create an instance of NfcUnitDTO from a JSON string
nfc_unit_dto_instance = NfcUnitDTO.from_json(json)
# print the JSON string representation of the object
print(NfcUnitDTO.to_json())

# convert the object into a dict
nfc_unit_dto_dict = nfc_unit_dto_instance.to_dict()
# create an instance of NfcUnitDTO from a dict
nfc_unit_dto_from_dict = NfcUnitDTO.from_dict(nfc_unit_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


