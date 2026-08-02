# prioritize_client.DocumentsApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**document_cancel_check_out**](DocumentsApi.md#document_cancel_check_out) | **POST** /api/v1/documents/{id}/cancel-check-out | Cancel checkout (unlock without a new version)
[**document_check_in**](DocumentsApi.md#document_check_in) | **POST** /api/v1/documents/{id}/check-in | Check in a document (upload a new version and unlock)
[**document_check_out**](DocumentsApi.md#document_check_out) | **POST** /api/v1/documents/{id}/check-out | Check out a document (lock it)
[**document_delete_document**](DocumentsApi.md#document_delete_document) | **DELETE** /api/v1/documents/{id} | Delete document
[**document_download_document**](DocumentsApi.md#document_download_document) | **GET** /api/v1/documents/download/{documentInfoId} | Download of the current version of a document
[**document_download_specific_version**](DocumentsApi.md#document_download_specific_version) | **GET** /api/v1/documents/{id}/version/{versionNumber} | Download of a specific version of a document
[**document_get_documents_in_group**](DocumentsApi.md#document_get_documents_in_group) | **GET** /api/v1/documents/group/{groupId} | All documents of a DocumentGroup as a DTO list
[**document_get_history**](DocumentsApi.md#document_get_history) | **GET** /api/v1/documents/{id}/history | Version history of a document
[**document_get_recent**](DocumentsApi.md#document_get_recent) | **GET** /api/v1/documents/recent | The 10 most recently modified documents
[**document_search**](DocumentsApi.md#document_search) | **GET** /api/v1/documents/search | Search documents by name
[**document_upload_document**](DocumentsApi.md#document_upload_document) | **POST** /api/v1/documents/upload/{groupId} | Upload of a new document into a DocumentGroup


# **document_cancel_check_out**
> document_cancel_check_out(id)

Cancel checkout (unlock without a new version)

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
    api_instance = prioritize_client.DocumentsApi(api_client)
    id = 56 # int | 

    try:
        # Cancel checkout (unlock without a new version)
        api_instance.document_cancel_check_out(id)
    except Exception as e:
        print("Exception when calling DocumentsApi->document_cancel_check_out: %s\n" % e)
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

# **document_check_in**
> DocumentSummaryDTO document_check_in(id, comment=comment, document_check_in_request=document_check_in_request)

Check in a document (upload a new version and unlock)

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.document_check_in_request import DocumentCheckInRequest
from prioritize_client.models.document_summary_dto import DocumentSummaryDTO
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
    api_instance = prioritize_client.DocumentsApi(api_client)
    id = 56 # int | 
    comment = 'comment_example' # str |  (optional)
    document_check_in_request = prioritize_client.DocumentCheckInRequest() # DocumentCheckInRequest |  (optional)

    try:
        # Check in a document (upload a new version and unlock)
        api_response = api_instance.document_check_in(id, comment=comment, document_check_in_request=document_check_in_request)
        print("The response of DocumentsApi->document_check_in:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DocumentsApi->document_check_in: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **comment** | **str**|  | [optional] 
 **document_check_in_request** | [**DocumentCheckInRequest**](DocumentCheckInRequest.md)|  | [optional] 

### Return type

[**DocumentSummaryDTO**](DocumentSummaryDTO.md)

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

# **document_check_out**
> document_check_out(id)

Check out a document (lock it)

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
    api_instance = prioritize_client.DocumentsApi(api_client)
    id = 56 # int | 

    try:
        # Check out a document (lock it)
        api_instance.document_check_out(id)
    except Exception as e:
        print("Exception when calling DocumentsApi->document_check_out: %s\n" % e)
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

# **document_delete_document**
> document_delete_document(id)

Delete document

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
    api_instance = prioritize_client.DocumentsApi(api_client)
    id = 56 # int | 

    try:
        # Delete document
        api_instance.document_delete_document(id)
    except Exception as e:
        print("Exception when calling DocumentsApi->document_delete_document: %s\n" % e)
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

# **document_download_document**
> bytearray document_download_document(document_info_id)

Download of the current version of a document

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
    api_instance = prioritize_client.DocumentsApi(api_client)
    document_info_id = 56 # int | 

    try:
        # Download of the current version of a document
        api_response = api_instance.document_download_document(document_info_id)
        print("The response of DocumentsApi->document_download_document:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DocumentsApi->document_download_document: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **document_info_id** | **int**|  | 

### Return type

**bytearray**

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

# **document_download_specific_version**
> bytearray document_download_specific_version(id, version_number)

Download of a specific version of a document

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
    api_instance = prioritize_client.DocumentsApi(api_client)
    id = 56 # int | 
    version_number = 56 # int | 

    try:
        # Download of a specific version of a document
        api_response = api_instance.document_download_specific_version(id, version_number)
        print("The response of DocumentsApi->document_download_specific_version:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DocumentsApi->document_download_specific_version: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **version_number** | **int**|  | 

### Return type

**bytearray**

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

# **document_get_documents_in_group**
> List[DocumentSummaryDTO] document_get_documents_in_group(group_id)

All documents of a DocumentGroup as a DTO list

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.document_summary_dto import DocumentSummaryDTO
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
    api_instance = prioritize_client.DocumentsApi(api_client)
    group_id = 56 # int | 

    try:
        # All documents of a DocumentGroup as a DTO list
        api_response = api_instance.document_get_documents_in_group(group_id)
        print("The response of DocumentsApi->document_get_documents_in_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DocumentsApi->document_get_documents_in_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **int**|  | 

### Return type

[**List[DocumentSummaryDTO]**](DocumentSummaryDTO.md)

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

# **document_get_history**
> List[DocumentHistoryDTO] document_get_history(id)

Version history of a document

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.document_history_dto import DocumentHistoryDTO
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
    api_instance = prioritize_client.DocumentsApi(api_client)
    id = 56 # int | 

    try:
        # Version history of a document
        api_response = api_instance.document_get_history(id)
        print("The response of DocumentsApi->document_get_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DocumentsApi->document_get_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**List[DocumentHistoryDTO]**](DocumentHistoryDTO.md)

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

# **document_get_recent**
> List[DocumentSummaryDTO] document_get_recent()

The 10 most recently modified documents

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.document_summary_dto import DocumentSummaryDTO
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
    api_instance = prioritize_client.DocumentsApi(api_client)

    try:
        # The 10 most recently modified documents
        api_response = api_instance.document_get_recent()
        print("The response of DocumentsApi->document_get_recent:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DocumentsApi->document_get_recent: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[DocumentSummaryDTO]**](DocumentSummaryDTO.md)

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

# **document_search**
> List[DocumentSummaryDTO] document_search(name)

Search documents by name

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.document_summary_dto import DocumentSummaryDTO
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
    api_instance = prioritize_client.DocumentsApi(api_client)
    name = 'name_example' # str | 

    try:
        # Search documents by name
        api_response = api_instance.document_search(name)
        print("The response of DocumentsApi->document_search:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DocumentsApi->document_search: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**|  | 

### Return type

[**List[DocumentSummaryDTO]**](DocumentSummaryDTO.md)

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

# **document_upload_document**
> DocumentSummaryDTO document_upload_document(group_id, name, file)

Upload of a new document into a DocumentGroup

### Example

* Basic Authentication (basicAuth):
* Bearer (JWT) Authentication (bearerAuth):

```python
import prioritize_client
from prioritize_client.models.document_summary_dto import DocumentSummaryDTO
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
    api_instance = prioritize_client.DocumentsApi(api_client)
    group_id = 56 # int | 
    name = 'name_example' # str | 
    file = None # bytearray | 

    try:
        # Upload of a new document into a DocumentGroup
        api_response = api_instance.document_upload_document(group_id, name, file)
        print("The response of DocumentsApi->document_upload_document:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DocumentsApi->document_upload_document: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **int**|  | 
 **name** | **str**|  | 
 **file** | **bytearray**|  | 

### Return type

[**DocumentSummaryDTO**](DocumentSummaryDTO.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: */*

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

