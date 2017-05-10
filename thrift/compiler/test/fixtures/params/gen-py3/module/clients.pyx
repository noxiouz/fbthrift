#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.vector cimport vector as vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from cython.operator cimport dereference as deref, typeid
from cpython.ref cimport PyObject
from thrift.py3.client cimport py3_get_exception, cRequestChannel_ptr, makeClientWrapper
from folly cimport cFollyTry, cFollyUnit, c_unit
from libcpp.typeinfo cimport type_info
import thrift.py3.types
cimport thrift.py3.types
import thrift.py3.client
cimport thrift.py3.client
from folly.futures cimport bridgeFutureWith
from folly.executor cimport get_executor

import asyncio
import sys
import traceback

cimport module.types
import module.types

from module.clients_wrapper cimport cNestedContainersAsyncClient, cNestedContainersClientWrapper


cdef void NestedContainers_mapList_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throw_exception()
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        citem = c_unit;
        pyfuture.set_result(None)

cdef void NestedContainers_mapSet_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throw_exception()
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        citem = c_unit;
        pyfuture.set_result(None)

cdef void NestedContainers_listMap_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throw_exception()
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        citem = c_unit;
        pyfuture.set_result(None)

cdef void NestedContainers_listSet_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throw_exception()
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        citem = c_unit;
        pyfuture.set_result(None)

cdef void NestedContainers_turtles_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* future
):
    cdef object pyfuture = <object> future
    cdef cFollyUnit citem
    if result.hasException():
        try:
            result.exception().throw_exception()
        except Exception as ex:
            pyfuture.set_exception(ex)
    else:
        citem = c_unit;
        pyfuture.set_result(None)


cdef class NestedContainers(thrift.py3.client.Client):

    def __cinit__(NestedContainers self):
        loop = asyncio.get_event_loop()
        self._connect_future = loop.create_future()
        self._executor = get_executor()

    cdef const type_info* _typeid(NestedContainers self):
        return &typeid(cNestedContainersAsyncClient)

    @staticmethod
    cdef _module_NestedContainers_set_client(NestedContainers inst, shared_ptr[cNestedContainersClientWrapper] c_obj):
        """So the class hierarchy talks to the correct pointer type"""
        inst._module_NestedContainers_client = c_obj

    cdef _module_NestedContainers_reset_client(NestedContainers self):
        """So the class hierarchy resets the shared pointer up the chain"""
        self._module_NestedContainers_client.reset()

    def __dealloc__(NestedContainers self):
        if self._cRequestChannel or self._module_NestedContainers_client:
            print('client was not cleaned up, use the context manager', file=sys.stderr)

    async def __aenter__(NestedContainers self):
        await self._connect_future
        if self._cRequestChannel:
            NestedContainers._module_NestedContainers_set_client(
                self,
                makeClientWrapper[cNestedContainersAsyncClient, cNestedContainersClientWrapper](
                    self._cRequestChannel
                ),
            )
            self._cRequestChannel.reset()
        else:
            raise asyncio.InvalidStateError('Client context has been used already')
        return self

    async def __aexit__(NestedContainers self, *exc):
        self._check_connect_future()
        loop = asyncio.get_event_loop()
        future = loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_NestedContainers_client).disconnect(),
            closed_NestedContainers_py3_client_callback,
            <PyObject *>future
        )
        # To break any future usage of this client
        badfuture = loop.create_future()
        badfuture.set_exception(asyncio.InvalidStateError('Client Out of Context'))
        badfuture.exception()
        self._connect_future = badfuture
        await future
        self._module_NestedContainers_reset_client()

    def set_persistent_header(NestedContainers self, str key, str value):
        cdef string ckey = <bytes> key.encode('utf-8')
        cdef string cvalue = <bytes> value.encode('utf-8')
        deref(self._module_NestedContainers_client).setPersistentHeader(ckey, cvalue)

    async def mapList(
            NestedContainers self,
            arg_foo):
        self._check_connect_future()
        loop = asyncio.get_event_loop()
        future = loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_NestedContainers_client).mapList(
                cmap[int32_t,vector[int32_t]](deref(module.types.Map__i32_List__i32(arg_foo)._map.get())),
            ),
            NestedContainers_mapList_callback,
            <PyObject *> future
        )
        return await future

    async def mapSet(
            NestedContainers self,
            arg_foo):
        self._check_connect_future()
        loop = asyncio.get_event_loop()
        future = loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_NestedContainers_client).mapSet(
                cmap[int32_t,cset[int32_t]](deref(module.types.Map__i32_Set__i32(arg_foo)._map.get())),
            ),
            NestedContainers_mapSet_callback,
            <PyObject *> future
        )
        return await future

    async def listMap(
            NestedContainers self,
            arg_foo):
        self._check_connect_future()
        loop = asyncio.get_event_loop()
        future = loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_NestedContainers_client).listMap(
                deref(module.types.List__Map__i32_i32(arg_foo)._vector.get()),
            ),
            NestedContainers_listMap_callback,
            <PyObject *> future
        )
        return await future

    async def listSet(
            NestedContainers self,
            arg_foo):
        self._check_connect_future()
        loop = asyncio.get_event_loop()
        future = loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_NestedContainers_client).listSet(
                deref(module.types.List__Set__i32(arg_foo)._vector.get()),
            ),
            NestedContainers_listSet_callback,
            <PyObject *> future
        )
        return await future

    async def turtles(
            NestedContainers self,
            arg_foo):
        self._check_connect_future()
        loop = asyncio.get_event_loop()
        future = loop.create_future()
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_NestedContainers_client).turtles(
                deref(module.types.List__List__Map__i32_Map__i32_Set__i32(arg_foo)._vector.get()),
            ),
            NestedContainers_turtles_callback,
            <PyObject *> future
        )
        return await future



cdef void closed_NestedContainers_py3_client_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* fut,
):
    cdef object pyfuture = <object> fut
    pyfuture.set_result(None)
