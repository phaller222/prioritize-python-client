# prioritize_client.TaskSchedulesApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**task_schedule_create_schedule**](TaskSchedulesApi.md#task_schedule_create_schedule) | **POST** /api/v1/projects/{projectId}/task-schedules | Creates a recurring task schedule on a project
[**task_schedule_delete_schedule**](TaskSchedulesApi.md#task_schedule_delete_schedule) | **DELETE** /api/v1/task-schedules/{id} | Deletes a schedule
[**task_schedule_get_schedule**](TaskSchedulesApi.md#task_schedule_get_schedule) | **GET** /api/v1/task-schedules/{id} | Returns a single schedule by id
[**task_schedule_get_schedules**](TaskSchedulesApi.md#task_schedule_get_schedules) | **GET** /api/v1/projects/{projectId}/task-schedules | Lists all schedules of a project (enabled or not)
[**task_schedule_update_schedule**](TaskSchedulesApi.md#task_schedule_update_schedule) | **PATCH** /api/v1/task-schedules/{id} | Partially updates a schedule (only the fields present in the body are changed)


# **task_schedule_create_schedule**
> TaskScheduleDTO task_schedule_create_schedule(project_id, task_schedule_request)

Creates a recurring task schedule on a project

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_schedule_dto import TaskScheduleDTO
from prioritize_client.models.task_schedule_request import TaskScheduleRequest
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
    api_instance = prioritize_client.TaskSchedulesApi(api_client)
    project_id = 56 # int | 
    task_schedule_request = prioritize_client.TaskScheduleRequest() # TaskScheduleRequest | 

    try:
        # Creates a recurring task schedule on a project
        api_response = api_instance.task_schedule_create_schedule(project_id, task_schedule_request)
        print("The response of TaskSchedulesApi->task_schedule_create_schedule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TaskSchedulesApi->task_schedule_create_schedule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **int**|  | 
 **task_schedule_request** | [**TaskScheduleRequest**](TaskScheduleRequest.md)|  | 

### Return type

[**TaskScheduleDTO**](TaskScheduleDTO.md)

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

# **task_schedule_delete_schedule**
> task_schedule_delete_schedule(id)

Deletes a schedule

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
    api_instance = prioritize_client.TaskSchedulesApi(api_client)
    id = 56 # int | 

    try:
        # Deletes a schedule
        api_instance.task_schedule_delete_schedule(id)
    except Exception as e:
        print("Exception when calling TaskSchedulesApi->task_schedule_delete_schedule: %s\n" % e)
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

# **task_schedule_get_schedule**
> TaskScheduleDTO task_schedule_get_schedule(id)

Returns a single schedule by id

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_schedule_dto import TaskScheduleDTO
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
    api_instance = prioritize_client.TaskSchedulesApi(api_client)
    id = 56 # int | 

    try:
        # Returns a single schedule by id
        api_response = api_instance.task_schedule_get_schedule(id)
        print("The response of TaskSchedulesApi->task_schedule_get_schedule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TaskSchedulesApi->task_schedule_get_schedule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**TaskScheduleDTO**](TaskScheduleDTO.md)

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

# **task_schedule_get_schedules**
> List[TaskScheduleDTO] task_schedule_get_schedules(project_id)

Lists all schedules of a project (enabled or not)

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_schedule_dto import TaskScheduleDTO
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
    api_instance = prioritize_client.TaskSchedulesApi(api_client)
    project_id = 56 # int | 

    try:
        # Lists all schedules of a project (enabled or not)
        api_response = api_instance.task_schedule_get_schedules(project_id)
        print("The response of TaskSchedulesApi->task_schedule_get_schedules:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TaskSchedulesApi->task_schedule_get_schedules: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **int**|  | 

### Return type

[**List[TaskScheduleDTO]**](TaskScheduleDTO.md)

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

# **task_schedule_update_schedule**
> TaskScheduleDTO task_schedule_update_schedule(id, task_schedule_request)

Partially updates a schedule (only the fields present in the body are changed)

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.task_schedule_dto import TaskScheduleDTO
from prioritize_client.models.task_schedule_request import TaskScheduleRequest
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
    api_instance = prioritize_client.TaskSchedulesApi(api_client)
    id = 56 # int | 
    task_schedule_request = prioritize_client.TaskScheduleRequest() # TaskScheduleRequest | 

    try:
        # Partially updates a schedule (only the fields present in the body are changed)
        api_response = api_instance.task_schedule_update_schedule(id, task_schedule_request)
        print("The response of TaskSchedulesApi->task_schedule_update_schedule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TaskSchedulesApi->task_schedule_update_schedule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **task_schedule_request** | [**TaskScheduleRequest**](TaskScheduleRequest.md)|  | 

### Return type

[**TaskScheduleDTO**](TaskScheduleDTO.md)

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

