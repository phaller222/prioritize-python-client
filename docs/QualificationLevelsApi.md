# prioritize_client.QualificationLevelsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**qualification_level_assign_qualification_level**](QualificationLevelsApi.md#qualification_level_assign_qualification_level) | **PUT** /api/v1/users/{userId}/qualification-level | Assign a user to a qualification level
[**qualification_level_create_qualification_level**](QualificationLevelsApi.md#qualification_level_create_qualification_level) | **POST** /api/v1/qualification-levels | Create qualification level
[**qualification_level_delete_qualification_level**](QualificationLevelsApi.md#qualification_level_delete_qualification_level) | **DELETE** /api/v1/qualification-levels/{levelId} | Delete qualification level
[**qualification_level_get_all_qualification_levels**](QualificationLevelsApi.md#qualification_level_get_all_qualification_levels) | **GET** /api/v1/qualification-levels | Get all qualification levels
[**qualification_level_get_qualification_level_by_id**](QualificationLevelsApi.md#qualification_level_get_qualification_level_by_id) | **GET** /api/v1/qualification-levels/{levelId} | Get qualification level by id
[**qualification_level_update_qualification_level**](QualificationLevelsApi.md#qualification_level_update_qualification_level) | **PUT** /api/v1/qualification-levels/{levelId} | Update qualification level


# **qualification_level_assign_qualification_level**
> UserDTO qualification_level_assign_qualification_level(user_id, level_id=level_id)

Assign a user to a qualification level

Omit levelId to take the user off their qualification level.

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.user_dto import UserDTO
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
    api_instance = prioritize_client.QualificationLevelsApi(api_client)
    user_id = 56 # int | 
    level_id = 56 # int |  (optional)

    try:
        # Assign a user to a qualification level
        api_response = api_instance.qualification_level_assign_qualification_level(user_id, level_id=level_id)
        print("The response of QualificationLevelsApi->qualification_level_assign_qualification_level:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling QualificationLevelsApi->qualification_level_assign_qualification_level: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **int**|  | 
 **level_id** | **int**|  | [optional] 

### Return type

[**UserDTO**](UserDTO.md)

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

# **qualification_level_create_qualification_level**
> QualificationLevelDTO qualification_level_create_qualification_level(qualification_level_request)

Create qualification level

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.qualification_level_dto import QualificationLevelDTO
from prioritize_client.models.qualification_level_request import QualificationLevelRequest
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
    api_instance = prioritize_client.QualificationLevelsApi(api_client)
    qualification_level_request = prioritize_client.QualificationLevelRequest() # QualificationLevelRequest | 

    try:
        # Create qualification level
        api_response = api_instance.qualification_level_create_qualification_level(qualification_level_request)
        print("The response of QualificationLevelsApi->qualification_level_create_qualification_level:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling QualificationLevelsApi->qualification_level_create_qualification_level: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qualification_level_request** | [**QualificationLevelRequest**](QualificationLevelRequest.md)|  | 

### Return type

[**QualificationLevelDTO**](QualificationLevelDTO.md)

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

# **qualification_level_delete_qualification_level**
> qualification_level_delete_qualification_level(level_id)

Delete qualification level

Refused while people are still assigned to the level.

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
    api_instance = prioritize_client.QualificationLevelsApi(api_client)
    level_id = 56 # int | 

    try:
        # Delete qualification level
        api_instance.qualification_level_delete_qualification_level(level_id)
    except Exception as e:
        print("Exception when calling QualificationLevelsApi->qualification_level_delete_qualification_level: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **level_id** | **int**|  | 

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

# **qualification_level_get_all_qualification_levels**
> List[QualificationLevelDTO] qualification_level_get_all_qualification_levels()

Get all qualification levels

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.qualification_level_dto import QualificationLevelDTO
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
    api_instance = prioritize_client.QualificationLevelsApi(api_client)

    try:
        # Get all qualification levels
        api_response = api_instance.qualification_level_get_all_qualification_levels()
        print("The response of QualificationLevelsApi->qualification_level_get_all_qualification_levels:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling QualificationLevelsApi->qualification_level_get_all_qualification_levels: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[QualificationLevelDTO]**](QualificationLevelDTO.md)

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

# **qualification_level_get_qualification_level_by_id**
> QualificationLevelDTO qualification_level_get_qualification_level_by_id(level_id)

Get qualification level by id

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.qualification_level_dto import QualificationLevelDTO
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
    api_instance = prioritize_client.QualificationLevelsApi(api_client)
    level_id = 56 # int | 

    try:
        # Get qualification level by id
        api_response = api_instance.qualification_level_get_qualification_level_by_id(level_id)
        print("The response of QualificationLevelsApi->qualification_level_get_qualification_level_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling QualificationLevelsApi->qualification_level_get_qualification_level_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **level_id** | **int**|  | 

### Return type

[**QualificationLevelDTO**](QualificationLevelDTO.md)

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

# **qualification_level_update_qualification_level**
> QualificationLevelDTO qualification_level_update_qualification_level(level_id, qualification_level_request)

Update qualification level

Replaces the level. Omitting the three cost fields clears its cost rate.

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.qualification_level_dto import QualificationLevelDTO
from prioritize_client.models.qualification_level_request import QualificationLevelRequest
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
    api_instance = prioritize_client.QualificationLevelsApi(api_client)
    level_id = 56 # int | 
    qualification_level_request = prioritize_client.QualificationLevelRequest() # QualificationLevelRequest | 

    try:
        # Update qualification level
        api_response = api_instance.qualification_level_update_qualification_level(level_id, qualification_level_request)
        print("The response of QualificationLevelsApi->qualification_level_update_qualification_level:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling QualificationLevelsApi->qualification_level_update_qualification_level: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **level_id** | **int**|  | 
 **qualification_level_request** | [**QualificationLevelRequest**](QualificationLevelRequest.md)|  | 

### Return type

[**QualificationLevelDTO**](QualificationLevelDTO.md)

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

