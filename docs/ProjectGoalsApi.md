# prioritize_client.ProjectGoalsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**project_goal_create_goal**](ProjectGoalsApi.md#project_goal_create_goal) | **POST** /api/v1/projects/{projectId}/goals | Create goal
[**project_goal_delete_goal**](ProjectGoalsApi.md#project_goal_delete_goal) | **DELETE** /api/v1/projects/{projectId}/goals/{goalId} | Delete goal
[**project_goal_get_goal**](ProjectGoalsApi.md#project_goal_get_goal) | **GET** /api/v1/projects/{projectId}/goals/{goalId} | Get goal
[**project_goal_get_goals**](ProjectGoalsApi.md#project_goal_get_goals) | **GET** /api/v1/projects/{projectId}/goals | Get goals
[**project_goal_get_progress**](ProjectGoalsApi.md#project_goal_get_progress) | **GET** /api/v1/projects/{projectId}/progress | Returns the project&#39;s progress derived from its goals and their tasks
[**project_goal_update_goal**](ProjectGoalsApi.md#project_goal_update_goal) | **PATCH** /api/v1/projects/{projectId}/goals/{goalId} | Update goal


# **project_goal_create_goal**
> ProjectGoalDTO project_goal_create_goal(project_id, goal_request)

Create goal

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.goal_request import GoalRequest
from prioritize_client.models.project_goal_dto import ProjectGoalDTO
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
    api_instance = prioritize_client.ProjectGoalsApi(api_client)
    project_id = 56 # int | 
    goal_request = prioritize_client.GoalRequest() # GoalRequest | 

    try:
        # Create goal
        api_response = api_instance.project_goal_create_goal(project_id, goal_request)
        print("The response of ProjectGoalsApi->project_goal_create_goal:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectGoalsApi->project_goal_create_goal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **int**|  | 
 **goal_request** | [**GoalRequest**](GoalRequest.md)|  | 

### Return type

[**ProjectGoalDTO**](ProjectGoalDTO.md)

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

# **project_goal_delete_goal**
> project_goal_delete_goal(project_id, goal_id)

Delete goal

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
    api_instance = prioritize_client.ProjectGoalsApi(api_client)
    project_id = 56 # int | 
    goal_id = 56 # int | 

    try:
        # Delete goal
        api_instance.project_goal_delete_goal(project_id, goal_id)
    except Exception as e:
        print("Exception when calling ProjectGoalsApi->project_goal_delete_goal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **int**|  | 
 **goal_id** | **int**|  | 

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

# **project_goal_get_goal**
> ProjectGoalDTO project_goal_get_goal(project_id, goal_id)

Get goal

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.project_goal_dto import ProjectGoalDTO
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
    api_instance = prioritize_client.ProjectGoalsApi(api_client)
    project_id = 56 # int | 
    goal_id = 56 # int | 

    try:
        # Get goal
        api_response = api_instance.project_goal_get_goal(project_id, goal_id)
        print("The response of ProjectGoalsApi->project_goal_get_goal:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectGoalsApi->project_goal_get_goal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **int**|  | 
 **goal_id** | **int**|  | 

### Return type

[**ProjectGoalDTO**](ProjectGoalDTO.md)

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

# **project_goal_get_goals**
> List[ProjectGoalDTO] project_goal_get_goals(project_id)

Get goals

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.project_goal_dto import ProjectGoalDTO
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
    api_instance = prioritize_client.ProjectGoalsApi(api_client)
    project_id = 56 # int | 

    try:
        # Get goals
        api_response = api_instance.project_goal_get_goals(project_id)
        print("The response of ProjectGoalsApi->project_goal_get_goals:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectGoalsApi->project_goal_get_goals: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **int**|  | 

### Return type

[**List[ProjectGoalDTO]**](ProjectGoalDTO.md)

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

# **project_goal_get_progress**
> ProjectProgress project_goal_get_progress(project_id)

Returns the project's progress derived from its goals and their tasks

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.project_progress import ProjectProgress
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
    api_instance = prioritize_client.ProjectGoalsApi(api_client)
    project_id = 56 # int | 

    try:
        # Returns the project's progress derived from its goals and their tasks
        api_response = api_instance.project_goal_get_progress(project_id)
        print("The response of ProjectGoalsApi->project_goal_get_progress:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectGoalsApi->project_goal_get_progress: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **int**|  | 

### Return type

[**ProjectProgress**](ProjectProgress.md)

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

# **project_goal_update_goal**
> ProjectGoalDTO project_goal_update_goal(project_id, goal_id, goal_request)

Update goal

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.goal_request import GoalRequest
from prioritize_client.models.project_goal_dto import ProjectGoalDTO
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
    api_instance = prioritize_client.ProjectGoalsApi(api_client)
    project_id = 56 # int | 
    goal_id = 56 # int | 
    goal_request = prioritize_client.GoalRequest() # GoalRequest | 

    try:
        # Update goal
        api_response = api_instance.project_goal_update_goal(project_id, goal_id, goal_request)
        print("The response of ProjectGoalsApi->project_goal_update_goal:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectGoalsApi->project_goal_update_goal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_id** | **int**|  | 
 **goal_id** | **int**|  | 
 **goal_request** | [**GoalRequest**](GoalRequest.md)|  | 

### Return type

[**ProjectGoalDTO**](ProjectGoalDTO.md)

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

