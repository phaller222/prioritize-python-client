# CompanyDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**vat_number** | **str** |  | [optional] 
**tax_id** | **str** |  | [optional] 
**main_address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 

## Example

```python
from prioritize_client.models.company_dto import CompanyDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CompanyDTO from a JSON string
company_dto_instance = CompanyDTO.from_json(json)
# print the JSON string representation of the object
print(CompanyDTO.to_json())

# convert the object into a dict
company_dto_dict = company_dto_instance.to_dict()
# create an instance of CompanyDTO from a dict
company_dto_from_dict = CompanyDTO.from_dict(company_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


