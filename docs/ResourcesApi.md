# prioritize_client.ResourcesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resource_assign_skill_to_resource**](ResourcesApi.md#resource_assign_skill_to_resource) | **POST** /api/v1/resources/{resourceId}/skills | Assigns a skill to a resource
[**resource_cancel_reservation**](ResourcesApi.md#resource_cancel_reservation) | **DELETE** /api/v1/reservations/{reservationId} | Cancels a reservation and releases the occupied slot
[**resource_create_resource**](ResourcesApi.md#resource_create_resource) | **POST** /api/v1/resourcegroups/{groupId}/resources | Creates a new resource in a specific resource group
[**resource_create_resource_group**](ResourcesApi.md#resource_create_resource_group) | **POST** /api/v1/departments/{deptId}/resourcegroups | Creates a new resource group for a specific department
[**resource_delete_resource**](ResourcesApi.md#resource_delete_resource) | **DELETE** /api/v1/resources/{id} | Deletes a resource, if the current user is authorized
[**resource_delete_resource_group**](ResourcesApi.md#resource_delete_resource_group) | **DELETE** /api/v1/resourcegroups/{groupId} | Deletes a resource group, if the current user is authorized
[**resource_get_all_resources**](ResourcesApi.md#resource_get_all_resources) | **GET** /api/v1/resources | Returns every resource the current user may read (flat list)
[**resource_get_latest_values**](ResourcesApi.md#resource_get_latest_values) | **GET** /api/v1/resources/{id}/values/latest | Returns the newest reading of every telemetry data point of a resource
[**resource_get_my_active_reservations**](ResourcesApi.md#resource_get_my_active_reservations) | **GET** /api/v1/resources/{id}/reservations/mine | Returns the caller&#39;s own currently active reservations on this resource
[**resource_get_reservations_for_resource**](ResourcesApi.md#resource_get_reservations_for_resource) | **GET** /api/v1/resources/{id}/reservations | Returns all reservations of a resource (occupancy overview)
[**resource_get_resource**](ResourcesApi.md#resource_get_resource) | **GET** /api/v1/resources/{id} | Retrieves a resource, if the current user is authorized
[**resource_get_resource_groups**](ResourcesApi.md#resource_get_resource_groups) | **GET** /api/v1/departments/{deptId}/resourcegroups | Returns the resource groups of a department
[**resource_get_resource_status**](ResourcesApi.md#resource_get_resource_status) | **GET** /api/v1/resources/status | Returns every readable resource with its latest values and monitoring rules
[**resource_get_resources_by_resource_group**](ResourcesApi.md#resource_get_resources_by_resource_group) | **GET** /api/v1/resourcegroups/{groupId}/resources | Returns all resources of a specific resource group
[**resource_get_skills_for_resource**](ResourcesApi.md#resource_get_skills_for_resource) | **GET** /api/v1/resources/{resourceId}/skills | Returns all skills of a resource
[**resource_get_skills_for_resource_in_group**](ResourcesApi.md#resource_get_skills_for_resource_in_group) | **GET** /api/v1/resourcegroups/{groupId}/resources/{resourceId}/skills | Returns all skills of a resource, filtered by resource group
[**resource_partial_update_resource**](ResourcesApi.md#resource_partial_update_resource) | **PATCH** /api/v1/resources/{id} | Updates individual fields of a resource (PATCH semantics: null &#x3D; unchanged)
[**resource_record_value**](ResourcesApi.md#resource_record_value) | **POST** /api/v1/resources/{id}/values | Records a telemetry reading for a resource (REST ingest)
[**resource_rename_resource_group**](ResourcesApi.md#resource_rename_resource_group) | **PUT** /api/v1/resourcegroups/{groupId} | Renames a resource group, if the current user is authorized
[**resource_reserve_resource**](ResourcesApi.md#resource_reserve_resource) | **POST** /api/v1/resources/{id}/reserve | Reserves a resource for a specific time span
[**resource_send_command**](ResourcesApi.md#resource_send_command) | **POST** /api/v1/resources/{id}/command | Sends a control command to a resource


# **resource_assign_skill_to_resource**
> SkillRecordDTO resource_assign_skill_to_resource(resource_id, skill_record_request)

Assigns a skill to a resource

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.skill_record_dto import SkillRecordDTO
from prioritize_client.models.skill_record_request import SkillRecordRequest
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    resource_id = 56 # int | 
    skill_record_request = prioritize_client.SkillRecordRequest() # SkillRecordRequest | 

    try:
        # Assigns a skill to a resource
        api_response = api_instance.resource_assign_skill_to_resource(resource_id, skill_record_request)
        print("The response of ResourcesApi->resource_assign_skill_to_resource:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_assign_skill_to_resource: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_id** | **int**|  | 
 **skill_record_request** | [**SkillRecordRequest**](SkillRecordRequest.md)|  | 

### Return type

[**SkillRecordDTO**](SkillRecordDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_cancel_reservation**
> resource_cancel_reservation(reservation_id)

Cancels a reservation and releases the occupied slot

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    reservation_id = 56 # int | 

    try:
        # Cancels a reservation and releases the occupied slot
        api_instance.resource_cancel_reservation(reservation_id)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_cancel_reservation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reservation_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_create_resource**
> ResourceDTO resource_create_resource(group_id, resource_request)

Creates a new resource in a specific resource group

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_dto import ResourceDTO
from prioritize_client.models.resource_request import ResourceRequest
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    group_id = 56 # int | 
    resource_request = prioritize_client.ResourceRequest() # ResourceRequest | 

    try:
        # Creates a new resource in a specific resource group
        api_response = api_instance.resource_create_resource(group_id, resource_request)
        print("The response of ResourcesApi->resource_create_resource:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_create_resource: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **int**|  | 
 **resource_request** | [**ResourceRequest**](ResourceRequest.md)|  | 

### Return type

[**ResourceDTO**](ResourceDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_create_resource_group**
> ResourceGroupDTO resource_create_resource_group(dept_id, name)

Creates a new resource group for a specific department

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_group_dto import ResourceGroupDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    dept_id = 56 # int | 
    name = 'name_example' # str | 

    try:
        # Creates a new resource group for a specific department
        api_response = api_instance.resource_create_resource_group(dept_id, name)
        print("The response of ResourcesApi->resource_create_resource_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_create_resource_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dept_id** | **int**|  | 
 **name** | **str**|  | 

### Return type

[**ResourceGroupDTO**](ResourceGroupDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_delete_resource**
> resource_delete_resource(id)

Deletes a resource, if the current user is authorized

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    id = 56 # int | 

    try:
        # Deletes a resource, if the current user is authorized
        api_instance.resource_delete_resource(id)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_delete_resource: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_delete_resource_group**
> resource_delete_resource_group(group_id)

Deletes a resource group, if the current user is authorized

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    group_id = 56 # int | 

    try:
        # Deletes a resource group, if the current user is authorized
        api_instance.resource_delete_resource_group(group_id)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_delete_resource_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_get_all_resources**
> List[ResourceDTO] resource_get_all_resources()

Returns every resource the current user may read (flat list)

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_dto import ResourceDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)

    try:
        # Returns every resource the current user may read (flat list)
        api_response = api_instance.resource_get_all_resources()
        print("The response of ResourcesApi->resource_get_all_resources:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_get_all_resources: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[ResourceDTO]**](ResourceDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_get_latest_values**
> List[ResourceValueDTO] resource_get_latest_values(id)

Returns the newest reading of every telemetry data point of a resource

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_value_dto import ResourceValueDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    id = 56 # int | 

    try:
        # Returns the newest reading of every telemetry data point of a resource
        api_response = api_instance.resource_get_latest_values(id)
        print("The response of ResourcesApi->resource_get_latest_values:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_get_latest_values: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**List[ResourceValueDTO]**](ResourceValueDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_get_my_active_reservations**
> List[ResourceReservationDTO] resource_get_my_active_reservations(id)

Returns the caller's own currently active reservations on this resource

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_reservation_dto import ResourceReservationDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    id = 56 # int | 

    try:
        # Returns the caller's own currently active reservations on this resource
        api_response = api_instance.resource_get_my_active_reservations(id)
        print("The response of ResourcesApi->resource_get_my_active_reservations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_get_my_active_reservations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**List[ResourceReservationDTO]**](ResourceReservationDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_get_reservations_for_resource**
> List[ResourceReservationDTO] resource_get_reservations_for_resource(id)

Returns all reservations of a resource (occupancy overview)

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_reservation_dto import ResourceReservationDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    id = 56 # int | 

    try:
        # Returns all reservations of a resource (occupancy overview)
        api_response = api_instance.resource_get_reservations_for_resource(id)
        print("The response of ResourcesApi->resource_get_reservations_for_resource:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_get_reservations_for_resource: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**List[ResourceReservationDTO]**](ResourceReservationDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_get_resource**
> ResourceDTO resource_get_resource(id)

Retrieves a resource, if the current user is authorized

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_dto import ResourceDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    id = 56 # int | 

    try:
        # Retrieves a resource, if the current user is authorized
        api_response = api_instance.resource_get_resource(id)
        print("The response of ResourcesApi->resource_get_resource:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_get_resource: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**ResourceDTO**](ResourceDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_get_resource_groups**
> List[ResourceGroupDTO] resource_get_resource_groups(dept_id)

Returns the resource groups of a department

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_group_dto import ResourceGroupDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    dept_id = 56 # int | 

    try:
        # Returns the resource groups of a department
        api_response = api_instance.resource_get_resource_groups(dept_id)
        print("The response of ResourcesApi->resource_get_resource_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_get_resource_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dept_id** | **int**|  | 

### Return type

[**List[ResourceGroupDTO]**](ResourceGroupDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_get_resource_status**
> List[ResourceStatusDTO] resource_get_resource_status()

Returns every readable resource with its latest values and monitoring rules

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_status_dto import ResourceStatusDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)

    try:
        # Returns every readable resource with its latest values and monitoring rules
        api_response = api_instance.resource_get_resource_status()
        print("The response of ResourcesApi->resource_get_resource_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_get_resource_status: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[ResourceStatusDTO]**](ResourceStatusDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_get_resources_by_resource_group**
> List[ResourceDTO] resource_get_resources_by_resource_group(group_id)

Returns all resources of a specific resource group

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_dto import ResourceDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    group_id = 56 # int | 

    try:
        # Returns all resources of a specific resource group
        api_response = api_instance.resource_get_resources_by_resource_group(group_id)
        print("The response of ResourcesApi->resource_get_resources_by_resource_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_get_resources_by_resource_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **int**|  | 

### Return type

[**List[ResourceDTO]**](ResourceDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_get_skills_for_resource**
> List[SkillRecordDTO] resource_get_skills_for_resource(resource_id)

Returns all skills of a resource

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.skill_record_dto import SkillRecordDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    resource_id = 56 # int | 

    try:
        # Returns all skills of a resource
        api_response = api_instance.resource_get_skills_for_resource(resource_id)
        print("The response of ResourcesApi->resource_get_skills_for_resource:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_get_skills_for_resource: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resource_id** | **int**|  | 

### Return type

[**List[SkillRecordDTO]**](SkillRecordDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_get_skills_for_resource_in_group**
> List[SkillRecordDTO] resource_get_skills_for_resource_in_group(group_id, resource_id)

Returns all skills of a resource, filtered by resource group

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.skill_record_dto import SkillRecordDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    group_id = 56 # int | 
    resource_id = 56 # int | 

    try:
        # Returns all skills of a resource, filtered by resource group
        api_response = api_instance.resource_get_skills_for_resource_in_group(group_id, resource_id)
        print("The response of ResourcesApi->resource_get_skills_for_resource_in_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_get_skills_for_resource_in_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **int**|  | 
 **resource_id** | **int**|  | 

### Return type

[**List[SkillRecordDTO]**](SkillRecordDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_partial_update_resource**
> ResourceDTO resource_partial_update_resource(id, resource_request)

Updates individual fields of a resource (PATCH semantics: null = unchanged)

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_dto import ResourceDTO
from prioritize_client.models.resource_request import ResourceRequest
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    id = 56 # int | 
    resource_request = prioritize_client.ResourceRequest() # ResourceRequest | 

    try:
        # Updates individual fields of a resource (PATCH semantics: null = unchanged)
        api_response = api_instance.resource_partial_update_resource(id, resource_request)
        print("The response of ResourcesApi->resource_partial_update_resource:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_partial_update_resource: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **resource_request** | [**ResourceRequest**](ResourceRequest.md)|  | 

### Return type

[**ResourceDTO**](ResourceDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_record_value**
> resource_record_value(id, resource_value_request)

Records a telemetry reading for a resource (REST ingest)

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_value_request import ResourceValueRequest
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    id = 56 # int | 
    resource_value_request = prioritize_client.ResourceValueRequest() # ResourceValueRequest | 

    try:
        # Records a telemetry reading for a resource (REST ingest)
        api_instance.resource_record_value(id, resource_value_request)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_record_value: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **resource_value_request** | [**ResourceValueRequest**](ResourceValueRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_rename_resource_group**
> ResourceGroupDTO resource_rename_resource_group(group_id, name)

Renames a resource group, if the current user is authorized

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_group_dto import ResourceGroupDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    group_id = 56 # int | 
    name = 'name_example' # str | 

    try:
        # Renames a resource group, if the current user is authorized
        api_response = api_instance.resource_rename_resource_group(group_id, name)
        print("The response of ResourcesApi->resource_rename_resource_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_rename_resource_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **int**|  | 
 **name** | **str**|  | 

### Return type

[**ResourceGroupDTO**](ResourceGroupDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_reserve_resource**
> ResourceReservationDTO resource_reserve_resource(id, from_iso_date, until_iso_date)

Reserves a resource for a specific time span

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_reservation_dto import ResourceReservationDTO
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    id = 56 # int | 
    from_iso_date = 'from_iso_date_example' # str | 
    until_iso_date = 'until_iso_date_example' # str | 

    try:
        # Reserves a resource for a specific time span
        api_response = api_instance.resource_reserve_resource(id, from_iso_date, until_iso_date)
        print("The response of ResourcesApi->resource_reserve_resource:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_reserve_resource: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **from_iso_date** | **str**|  | 
 **until_iso_date** | **str**|  | 

### Return type

[**ResourceReservationDTO**](ResourceReservationDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resource_send_command**
> resource_send_command(id, resource_command_request)

Sends a control command to a resource

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.resource_command_request import ResourceCommandRequest
from prioritize_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost:8080
# See configuration.py for a list of all supported configuration parameters.
configuration = prioritize_client.Configuration(
    host = "http://localhost:8080"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: basicAuth
configuration = prioritize_client.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Configure Bearer authorization (JWT): bearerAuth
configuration = prioritize_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with prioritize_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = prioritize_client.ResourcesApi(api_client)
    id = 56 # int | 
    resource_command_request = prioritize_client.ResourceCommandRequest() # ResourceCommandRequest | 

    try:
        # Sends a control command to a resource
        api_instance.resource_send_command(id, resource_command_request)
    except Exception as e:
        print("Exception when calling ResourcesApi->resource_send_command: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **resource_command_request** | [**ResourceCommandRequest**](ResourceCommandRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

