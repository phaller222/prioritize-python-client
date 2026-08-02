# ResourceReservationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**reserved_by** | **str** |  | [optional] 
**var_from** | **datetime** |  | [optional] 
**until** | **datetime** |  | [optional] 
**slot_number** | **int** |  | [optional] 

## Example

```python
from prioritize_client.models.resource_reservation_dto import ResourceReservationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceReservationDTO from a JSON string
resource_reservation_dto_instance = ResourceReservationDTO.from_json(json)
# print the JSON string representation of the object
print(ResourceReservationDTO.to_json())

# convert the object into a dict
resource_reservation_dto_dict = resource_reservation_dto_instance.to_dict()
# create an instance of ResourceReservationDTO from a dict
resource_reservation_dto_from_dict = ResourceReservationDTO.from_dict(resource_reservation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


