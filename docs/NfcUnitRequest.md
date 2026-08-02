# NfcUnitRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**payload** | **str** |  | [optional] 

## Example

```python
from prioritize_client.models.nfc_unit_request import NfcUnitRequest

# TODO update the JSON string below
json = "{}"
# create an instance of NfcUnitRequest from a JSON string
nfc_unit_request_instance = NfcUnitRequest.from_json(json)
# print the JSON string representation of the object
print(NfcUnitRequest.to_json())

# convert the object into a dict
nfc_unit_request_dict = nfc_unit_request_instance.to_dict()
# create an instance of NfcUnitRequest from a dict
nfc_unit_request_from_dict = NfcUnitRequest.from_dict(nfc_unit_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


