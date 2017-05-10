#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from cpython.ref cimport PyObject
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp cimport bool as cbool
from libcpp.map cimport map as cmap, pair as cpair
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.set cimport set as cset
from libcpp.string cimport string
from libcpp.vector cimport vector

from folly cimport cFollyFuture, cFollyTry, cFollyUnit

cimport module.types


cdef extern from "src/gen-cpp2/MyService.h" namespace "cpp2":
  cdef cppclass cMyServiceAsyncClient "cpp2::MyServiceAsyncClient":
      pass

cdef extern from "<utility>" namespace "std":
  cdef unique_ptr[cMyServiceClientWrapper] move(unique_ptr[cMyServiceClientWrapper])

cdef extern from "src/gen-cpp2/MyServiceFast.h" namespace "cpp2":
  cdef cppclass cMyServiceFastAsyncClient "cpp2::MyServiceFastAsyncClient":
      pass

cdef extern from "<utility>" namespace "std":
  cdef unique_ptr[cMyServiceFastClientWrapper] move(unique_ptr[cMyServiceFastClientWrapper])

cdef extern from "src/gen-cpp2/MyServiceEmpty.h" namespace "cpp2":
  cdef cppclass cMyServiceEmptyAsyncClient "cpp2::MyServiceEmptyAsyncClient":
      pass

cdef extern from "<utility>" namespace "std":
  cdef unique_ptr[cMyServiceEmptyClientWrapper] move(unique_ptr[cMyServiceEmptyClientWrapper])

cdef extern from "src/gen-cpp2/MyServicePrioParent.h" namespace "cpp2":
  cdef cppclass cMyServicePrioParentAsyncClient "cpp2::MyServicePrioParentAsyncClient":
      pass

cdef extern from "<utility>" namespace "std":
  cdef unique_ptr[cMyServicePrioParentClientWrapper] move(unique_ptr[cMyServicePrioParentClientWrapper])

cdef extern from "src/gen-cpp2/MyServicePrioChild.h" namespace "cpp2":
  cdef cppclass cMyServicePrioChildAsyncClient "cpp2::MyServicePrioChildAsyncClient":
      pass

cdef extern from "<utility>" namespace "std":
  cdef unique_ptr[cMyServicePrioChildClientWrapper] move(unique_ptr[cMyServicePrioChildClientWrapper])

cdef extern from "src/gen-py3/module/clients_wrapper.h" namespace "cpp2":
  cdef cppclass cMyServiceClientWrapper "cpp2::MyServiceClientWrapper":
    cMyServiceClientWrapper(
      shared_ptr[cMyServiceAsyncClient] async_client)
    cFollyFuture[cFollyUnit] disconnect()
    void setPersistentHeader(const string& key, const string& value)

    cFollyFuture[cFollyUnit] ping()
    cFollyFuture[string] getRandomData()
    cFollyFuture[cbool] hasDataById(
      int64_t arg_id,)
    cFollyFuture[string] getDataById(
      int64_t arg_id,)
    cFollyFuture[cFollyUnit] putDataById(
      int64_t arg_id,
      string arg_data,)
    cFollyFuture[cFollyUnit] lobDataById(
      int64_t arg_id,
      string arg_data,)


  cdef cppclass cMyServiceFastClientWrapper "cpp2::MyServiceFastClientWrapper":
    cMyServiceFastClientWrapper(
      shared_ptr[cMyServiceFastAsyncClient] async_client)
    cFollyFuture[cFollyUnit] disconnect()
    void setPersistentHeader(const string& key, const string& value)

    cFollyFuture[cFollyUnit] ping()
    cFollyFuture[string] getRandomData()
    cFollyFuture[cbool] hasDataById(
      int64_t arg_id,)
    cFollyFuture[string] getDataById(
      int64_t arg_id,)
    cFollyFuture[cFollyUnit] putDataById(
      int64_t arg_id,
      string arg_data,)
    cFollyFuture[cFollyUnit] lobDataById(
      int64_t arg_id,
      string arg_data,)


  cdef cppclass cMyServiceEmptyClientWrapper "cpp2::MyServiceEmptyClientWrapper":
    cMyServiceEmptyClientWrapper(
      shared_ptr[cMyServiceEmptyAsyncClient] async_client)
    cFollyFuture[cFollyUnit] disconnect()
    void setPersistentHeader(const string& key, const string& value)



  cdef cppclass cMyServicePrioParentClientWrapper "cpp2::MyServicePrioParentClientWrapper":
    cMyServicePrioParentClientWrapper(
      shared_ptr[cMyServicePrioParentAsyncClient] async_client)
    cFollyFuture[cFollyUnit] disconnect()
    void setPersistentHeader(const string& key, const string& value)

    cFollyFuture[cFollyUnit] ping()
    cFollyFuture[cFollyUnit] pong()


  cdef cppclass cMyServicePrioChildClientWrapper "cpp2::MyServicePrioChildClientWrapper"(module.clients_wrapper.cMyServicePrioParentClientWrapper):
    cMyServicePrioChildClientWrapper(
      shared_ptr[cMyServicePrioChildAsyncClient] async_client)

    cFollyFuture[cFollyUnit] pang()

