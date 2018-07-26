#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

cimport cython as __cython
from cpython.object cimport PyTypeObject
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from libcpp.iterator cimport inserter as cinserter
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t, uint32_t
from cython.operator cimport dereference as deref, preincrement as inc, address as ptr_address
import thrift.py3.types
cimport thrift.py3.types
cimport thrift.py3.exceptions
from thrift.py3.types import NOTSET as __NOTSET
from thrift.py3.types cimport translate_cpp_enum_to_python, SetMetaClass as __SetMetaClass
cimport thrift.py3.std_libcpp as std_libcpp
from thrift.py3.serializer import Protocol as __Protocol
cimport thrift.py3.serializer as serializer
from thrift.py3.serializer import deserialize, serialize
import folly.iobuf as __iobuf
from folly.optional cimport cOptional

import sys
import itertools
from collections import Sequence, Set, Mapping, Iterable
import warnings
import builtins as _builtins



cdef object __ComplexUnion_Union_TypeEnumMembers = None


@__cython.internal
@__cython.auto_pickle(False)
cdef class __ComplexUnion_Union_TypeMeta(type):
    def __call__(cls, value):
        cdef int cvalue
        if isinstance(value, cls) and value in __ComplexUnion_Union_TypeEnumMembers:
            return value

        if isinstance(value, int):
            cvalue = value
            if cvalue == 0:
                return __ComplexUnionType.EMPTY
            elif cvalue == 1:
                return __ComplexUnionType.intValue
            elif cvalue == 5:
                return __ComplexUnionType.stringValue
            elif cvalue == 2:
                return __ComplexUnionType.intListValue
            elif cvalue == 3:
                return __ComplexUnionType.stringListValue
            elif cvalue == 9:
                return __ComplexUnionType.typedefValue
            elif cvalue == 14:
                return __ComplexUnionType.stringRef

        raise ValueError(f'{value} is not a valid ComplexUnion.Type')

    def __getitem__(cls, name):
        if name == "EMPTY":
            return __ComplexUnionType.EMPTY
        elif name == "intValue":
            return __ComplexUnionType.intValue
        elif name == "stringValue":
            return __ComplexUnionType.stringValue
        elif name == "intListValue":
            return __ComplexUnionType.intListValue
        elif name == "stringListValue":
            return __ComplexUnionType.stringListValue
        elif name == "typedefValue":
            return __ComplexUnionType.typedefValue
        elif name == "stringRef":
            return __ComplexUnionType.stringRef
        raise KeyError(name)

    def __dir__(cls):
        return ['__class__', '__doc__', '__members__', '__module__', 'EMPTY',
            'intValue',
            'stringValue',
            'intListValue',
            'stringListValue',
            'typedefValue',
            'stringRef',
        ]

    @property
    def __members__(cls):
        return {m.name: m for m in cls}

    def __iter__(cls):
        yield __ComplexUnionType.EMPTY
        yield __ComplexUnionType.intValue
        yield __ComplexUnionType.stringValue
        yield __ComplexUnionType.intListValue
        yield __ComplexUnionType.stringListValue
        yield __ComplexUnionType.typedefValue
        yield __ComplexUnionType.stringRef

    def __reversed__(cls):
        return reversed(iter(cls))

    def __contains__(cls, item):
        if not isinstance(item, cls):
            return False
        return item in __ComplexUnion_Union_TypeEnumMembers

    def __len__(cls):
        return 6+1  # For Empty


@__cython.final
cdef class __ComplexUnionType(thrift.py3.types.CompiledEnum):
    EMPTY = __ComplexUnionType.__new__(__ComplexUnionType, 0, "EMPTY")
    intValue = __ComplexUnionType.__new__(__ComplexUnionType, 1, "intValue")
    stringValue = __ComplexUnionType.__new__(__ComplexUnionType, 5, "stringValue")
    intListValue = __ComplexUnionType.__new__(__ComplexUnionType, 2, "intListValue")
    stringListValue = __ComplexUnionType.__new__(__ComplexUnionType, 3, "stringListValue")
    typedefValue = __ComplexUnionType.__new__(__ComplexUnionType, 9, "typedefValue")
    stringRef = __ComplexUnionType.__new__(__ComplexUnionType, 14, "stringRef")

    def __cinit__(self, value, name):
        if __ComplexUnion_Union_TypeEnumMembers is not None:
            raise TypeError('For Safty we have disabled __new__')
        self.value = value
        self.name = name
        self.__hash = hash(name)
        self.__str = f"ComplexUnion.Type.{name}"
        self.__repr = f"<{self.__str}: {value}>"

    def __repr__(self):
        return self.__repr

    def __str__(self):
        return self.__str

    def __int__(self):
        return self.value

    def __eq__(self, other):
        if not isinstance(other, __ComplexUnionType):
            warnings.warn(f"comparison not supported between instances of { __ComplexUnionType } and {type(other)}", RuntimeWarning, stacklevel=2)
            return False
        return self is other

    def __hash__(self):
        return self.__hash

    def __reduce__(self):
        return __ComplexUnionType, (self.value,)

__SetMetaClass(<PyTypeObject*> __ComplexUnionType, <PyTypeObject*> __ComplexUnion_Union_TypeMeta)
__ComplexUnion_Union_TypeEnumMembers = set(__ComplexUnionType)



cdef object __VirtualComplexUnion_Union_TypeEnumMembers = None


@__cython.internal
@__cython.auto_pickle(False)
cdef class __VirtualComplexUnion_Union_TypeMeta(type):
    def __call__(cls, value):
        cdef int cvalue
        if isinstance(value, cls) and value in __VirtualComplexUnion_Union_TypeEnumMembers:
            return value

        if isinstance(value, int):
            cvalue = value
            if cvalue == 0:
                return __VirtualComplexUnionType.EMPTY
            elif cvalue == 1:
                return __VirtualComplexUnionType.thingOne
            elif cvalue == 2:
                return __VirtualComplexUnionType.thingTwo

        raise ValueError(f'{value} is not a valid VirtualComplexUnion.Type')

    def __getitem__(cls, name):
        if name == "EMPTY":
            return __VirtualComplexUnionType.EMPTY
        elif name == "thingOne":
            return __VirtualComplexUnionType.thingOne
        elif name == "thingTwo":
            return __VirtualComplexUnionType.thingTwo
        raise KeyError(name)

    def __dir__(cls):
        return ['__class__', '__doc__', '__members__', '__module__', 'EMPTY',
            'thingOne',
            'thingTwo',
        ]

    @property
    def __members__(cls):
        return {m.name: m for m in cls}

    def __iter__(cls):
        yield __VirtualComplexUnionType.EMPTY
        yield __VirtualComplexUnionType.thingOne
        yield __VirtualComplexUnionType.thingTwo

    def __reversed__(cls):
        return reversed(iter(cls))

    def __contains__(cls, item):
        if not isinstance(item, cls):
            return False
        return item in __VirtualComplexUnion_Union_TypeEnumMembers

    def __len__(cls):
        return 2+1  # For Empty


@__cython.final
cdef class __VirtualComplexUnionType(thrift.py3.types.CompiledEnum):
    EMPTY = __VirtualComplexUnionType.__new__(__VirtualComplexUnionType, 0, "EMPTY")
    thingOne = __VirtualComplexUnionType.__new__(__VirtualComplexUnionType, 1, "thingOne")
    thingTwo = __VirtualComplexUnionType.__new__(__VirtualComplexUnionType, 2, "thingTwo")

    def __cinit__(self, value, name):
        if __VirtualComplexUnion_Union_TypeEnumMembers is not None:
            raise TypeError('For Safty we have disabled __new__')
        self.value = value
        self.name = name
        self.__hash = hash(name)
        self.__str = f"VirtualComplexUnion.Type.{name}"
        self.__repr = f"<{self.__str}: {value}>"

    def __repr__(self):
        return self.__repr

    def __str__(self):
        return self.__str

    def __int__(self):
        return self.value

    def __eq__(self, other):
        if not isinstance(other, __VirtualComplexUnionType):
            warnings.warn(f"comparison not supported between instances of { __VirtualComplexUnionType } and {type(other)}", RuntimeWarning, stacklevel=2)
            return False
        return self is other

    def __hash__(self):
        return self.__hash

    def __reduce__(self):
        return __VirtualComplexUnionType, (self.value,)

__SetMetaClass(<PyTypeObject*> __VirtualComplexUnionType, <PyTypeObject*> __VirtualComplexUnion_Union_TypeMeta)
__VirtualComplexUnion_Union_TypeEnumMembers = set(__VirtualComplexUnionType)




cdef class ComplexUnion(thrift.py3.types.Union):
    Type = __ComplexUnionType

    def __init__(
        self, *,
        intValue=None,
        str stringValue=None,
        intListValue=None,
        stringListValue=None,
        typedefValue=None,
        str stringRef=None
    ):
        if intValue is not None:
            if not isinstance(intValue, int):
                raise TypeError(f'intValue is not a { int !r}.')
            intValue = <int64_t> intValue

        self._cpp_obj = move(ComplexUnion._make_instance(
          NULL,
          intValue,
          stringValue,
          intListValue,
          stringListValue,
          typedefValue,
          stringRef,
        ))
        self._load_cache()

    @staticmethod
    def fromValue(value):
        if value is None:
            return ComplexUnion()
        if isinstance(value, int):
            if not isinstance(value, pbool):
                try:
                    <int64_t> value
                    return ComplexUnion(intValue=value)
                except OverflowError:
                    pass
        if isinstance(value, str):
            return ComplexUnion(stringValue=value)
        if isinstance(value, List__i64):
            return ComplexUnion(intListValue=value)
        if isinstance(value, List__string):
            return ComplexUnion(stringListValue=value)
        if isinstance(value, Map__i16_string):
            return ComplexUnion(typedefValue=value)
        if isinstance(value, str):
            return ComplexUnion(stringRef=value)
        raise ValueError(f"Unable to derive correct union field for value: {value}")

    @staticmethod
    cdef unique_ptr[cComplexUnion] _make_instance(
        cComplexUnion* base_instance,
        intValue,
        stringValue,
        intListValue,
        stringListValue,
        typedefValue,
        stringRef
    ) except *:
        cdef unique_ptr[cComplexUnion] c_inst = make_unique[cComplexUnion]()
        cdef bint any_set = False
        if intValue is not None:
            if any_set:
                raise TypeError("At most one field may be set when initializing a union")
            deref(c_inst).set_intValue(intValue)
            any_set = True
        if stringValue is not None:
            if any_set:
                raise TypeError("At most one field may be set when initializing a union")
            deref(c_inst).set_stringValue(stringValue.encode('UTF-8'))
            any_set = True
        if intListValue is not None:
            if any_set:
                raise TypeError("At most one field may be set when initializing a union")
            deref(c_inst).set_intListValue(<vector[int64_t]>deref(List__i64(intListValue)._cpp_obj))
            any_set = True
        if stringListValue is not None:
            if any_set:
                raise TypeError("At most one field may be set when initializing a union")
            deref(c_inst).set_stringListValue(<vector[string]>deref(List__string(stringListValue)._cpp_obj))
            any_set = True
        if typedefValue is not None:
            if any_set:
                raise TypeError("At most one field may be set when initializing a union")
            deref(c_inst).set_typedefValue(<cmap[int16_t,string]>deref(Map__i16_string(typedefValue)._cpp_obj))
            any_set = True
        if stringRef is not None:
            if any_set:
                raise TypeError("At most one field may be set when initializing a union")
            deref(c_inst).set_stringRef(string(deref((<str?>stringRef)._cpp_obj)))
            any_set = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return move_unique(c_inst)

    def __bool__(self):
        return self.type is not __ComplexUnionType.EMPTY

    @staticmethod
    cdef create(shared_ptr[cComplexUnion] cpp_obj):
        inst = <ComplexUnion>ComplexUnion.__new__(ComplexUnion)
        inst._cpp_obj = cpp_obj
        inst._load_cache()
        return inst

    @property
    def intValue(self):
        if self.type.value != 1:
            raise TypeError(f'Union contains a value of type {self.type.name}, not intValue')
        return self.value

    @property
    def stringValue(self):
        if self.type.value != 5:
            raise TypeError(f'Union contains a value of type {self.type.name}, not stringValue')
        return self.value

    @property
    def intListValue(self):
        if self.type.value != 2:
            raise TypeError(f'Union contains a value of type {self.type.name}, not intListValue')
        return self.value

    @property
    def stringListValue(self):
        if self.type.value != 3:
            raise TypeError(f'Union contains a value of type {self.type.name}, not stringListValue')
        return self.value

    @property
    def typedefValue(self):
        if self.type.value != 9:
            raise TypeError(f'Union contains a value of type {self.type.name}, not typedefValue')
        return self.value

    @property
    def stringRef(self):
        if self.type.value != 14:
            raise TypeError(f'Union contains a value of type {self.type.name}, not stringRef')
        return self.value


    def __hash__(ComplexUnion self):
        if not self.__hash:
            self.__hash = hash((
                self.type,
                self.value,
            ))
        return self.__hash

    def __repr__(ComplexUnion self):
        return f'ComplexUnion(type={self.type.name}, value={self.value!r})'

    cdef _load_cache(ComplexUnion self):
        self.type = ComplexUnion.Type(<int>(deref(self._cpp_obj).getType()))
        cdef int type = self.type.value
        if type == 0:    # Empty
            self.value = None
        elif type == 1:
            self.value = deref(self._cpp_obj).get_intValue()
        elif type == 5:
            self.value = bytes(deref(self._cpp_obj).get_stringValue()).decode('UTF-8')
        elif type == 2:
            self.value = List__i64.create(make_shared[vector[int64_t]](deref(self._cpp_obj).get_intListValue()))
        elif type == 3:
            self.value = List__string.create(make_shared[vector[string]](deref(self._cpp_obj).get_stringListValue()))
        elif type == 9:
            self.value = Map__i16_string.create(make_shared[cmap[int16_t,string]](deref(self._cpp_obj).get_typedefValue()))
        elif type == 14:
            if not deref(self._cpp_obj).get_stringRef():
                self.value = None
            else:
                self.value = str.create(aliasing_constructor_stringRef(self._cpp_obj, (deref(self._cpp_obj).get_stringRef()).get()))

    def get_type(ComplexUnion self):
        return self.type

    def __richcmp__(self, other, op):
        cdef int cop = op
        if cop not in (2, 3):
            raise TypeError("unorderable types: {}, {}".format(self, other))
        if not (
                isinstance(self, ComplexUnion) and
                isinstance(other, ComplexUnion)):
            if cop == 2:  # different types are never equal
                return False
            else:         # different types are always notequal
                return True

        cdef cComplexUnion cself = deref((<ComplexUnion>self)._cpp_obj)
        cdef cComplexUnion cother = deref((<ComplexUnion>other)._cpp_obj)
        cdef cbool cmp = cself == cother
        if cop == 2:
            return cmp
        return not cmp

    cdef __iobuf.IOBuf _serialize(ComplexUnion self, proto):
        cdef __iobuf.cIOBufQueue queue = __iobuf.cIOBufQueue(__iobuf.cacheChainLength())
        cdef cComplexUnion* cpp_obj = self._cpp_obj.get()
        if proto is __Protocol.COMPACT:
            with nogil:
                serializer.CompactSerialize[cComplexUnion](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.BINARY:
            with nogil:
                serializer.BinarySerialize[cComplexUnion](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.JSON:
            with nogil:
                serializer.JSONSerialize[cComplexUnion](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.COMPACT_JSON:
            with nogil:
                serializer.CompactJSONSerialize[cComplexUnion](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        return __iobuf.from_unique_ptr(queue.move())

    cdef uint32_t _deserialize(ComplexUnion self, const __iobuf.cIOBuf* buf, proto) except? 0:
        cdef uint32_t needed
        self._cpp_obj = make_shared[cComplexUnion]()
        cdef cComplexUnion* cpp_obj = self._cpp_obj.get()
        if proto is __Protocol.COMPACT:
            with nogil:
                needed = serializer.CompactDeserialize[cComplexUnion](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.BINARY:
            with nogil:
                needed = serializer.BinaryDeserialize[cComplexUnion](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.JSON:
            with nogil:
                needed = serializer.JSONDeserialize[cComplexUnion](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.COMPACT_JSON:
            with nogil:
                needed = serializer.CompactJSONDeserialize[cComplexUnion](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        # force a cache reload since the underlying data's changed
        self._load_cache()
        return needed

    def __reduce__(self):
        return (deserialize, (ComplexUnion, serialize(self)))




cdef class VirtualComplexUnion(thrift.py3.types.Union):
    Type = __VirtualComplexUnionType

    def __init__(
        self, *,
        str thingOne=None,
        str thingTwo=None
    ):
        self._cpp_obj = move(VirtualComplexUnion._make_instance(
          NULL,
          thingOne,
          thingTwo,
        ))
        self._load_cache()

    @staticmethod
    def fromValue(value):
        if value is None:
            return VirtualComplexUnion()
        if isinstance(value, str):
            return VirtualComplexUnion(thingOne=value)
        if isinstance(value, str):
            return VirtualComplexUnion(thingTwo=value)
        raise ValueError(f"Unable to derive correct union field for value: {value}")

    @staticmethod
    cdef unique_ptr[cVirtualComplexUnion] _make_instance(
        cVirtualComplexUnion* base_instance,
        thingOne,
        thingTwo
    ) except *:
        cdef unique_ptr[cVirtualComplexUnion] c_inst = make_unique[cVirtualComplexUnion]()
        cdef bint any_set = False
        if thingOne is not None:
            if any_set:
                raise TypeError("At most one field may be set when initializing a union")
            deref(c_inst).set_thingOne(thingOne.encode('UTF-8'))
            any_set = True
        if thingTwo is not None:
            if any_set:
                raise TypeError("At most one field may be set when initializing a union")
            deref(c_inst).set_thingTwo(thingTwo.encode('UTF-8'))
            any_set = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return move_unique(c_inst)

    def __bool__(self):
        return self.type is not __VirtualComplexUnionType.EMPTY

    @staticmethod
    cdef create(shared_ptr[cVirtualComplexUnion] cpp_obj):
        inst = <VirtualComplexUnion>VirtualComplexUnion.__new__(VirtualComplexUnion)
        inst._cpp_obj = cpp_obj
        inst._load_cache()
        return inst

    @property
    def thingOne(self):
        if self.type.value != 1:
            raise TypeError(f'Union contains a value of type {self.type.name}, not thingOne')
        return self.value

    @property
    def thingTwo(self):
        if self.type.value != 2:
            raise TypeError(f'Union contains a value of type {self.type.name}, not thingTwo')
        return self.value


    def __hash__(VirtualComplexUnion self):
        if not self.__hash:
            self.__hash = hash((
                self.type,
                self.value,
            ))
        return self.__hash

    def __repr__(VirtualComplexUnion self):
        return f'VirtualComplexUnion(type={self.type.name}, value={self.value!r})'

    cdef _load_cache(VirtualComplexUnion self):
        self.type = VirtualComplexUnion.Type(<int>(deref(self._cpp_obj).getType()))
        cdef int type = self.type.value
        if type == 0:    # Empty
            self.value = None
        elif type == 1:
            self.value = bytes(deref(self._cpp_obj).get_thingOne()).decode('UTF-8')
        elif type == 2:
            self.value = bytes(deref(self._cpp_obj).get_thingTwo()).decode('UTF-8')

    def get_type(VirtualComplexUnion self):
        return self.type

    def __richcmp__(self, other, op):
        cdef int cop = op
        if cop not in (2, 3):
            raise TypeError("unorderable types: {}, {}".format(self, other))
        if not (
                isinstance(self, VirtualComplexUnion) and
                isinstance(other, VirtualComplexUnion)):
            if cop == 2:  # different types are never equal
                return False
            else:         # different types are always notequal
                return True

        cdef cVirtualComplexUnion cself = deref((<VirtualComplexUnion>self)._cpp_obj)
        cdef cVirtualComplexUnion cother = deref((<VirtualComplexUnion>other)._cpp_obj)
        cdef cbool cmp = cself == cother
        if cop == 2:
            return cmp
        return not cmp

    cdef __iobuf.IOBuf _serialize(VirtualComplexUnion self, proto):
        cdef __iobuf.cIOBufQueue queue = __iobuf.cIOBufQueue(__iobuf.cacheChainLength())
        cdef cVirtualComplexUnion* cpp_obj = self._cpp_obj.get()
        if proto is __Protocol.COMPACT:
            with nogil:
                serializer.CompactSerialize[cVirtualComplexUnion](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.BINARY:
            with nogil:
                serializer.BinarySerialize[cVirtualComplexUnion](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.JSON:
            with nogil:
                serializer.JSONSerialize[cVirtualComplexUnion](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.COMPACT_JSON:
            with nogil:
                serializer.CompactJSONSerialize[cVirtualComplexUnion](deref(cpp_obj), &queue, serializer.SHARE_EXTERNAL_BUFFER)
        return __iobuf.from_unique_ptr(queue.move())

    cdef uint32_t _deserialize(VirtualComplexUnion self, const __iobuf.cIOBuf* buf, proto) except? 0:
        cdef uint32_t needed
        self._cpp_obj = make_shared[cVirtualComplexUnion]()
        cdef cVirtualComplexUnion* cpp_obj = self._cpp_obj.get()
        if proto is __Protocol.COMPACT:
            with nogil:
                needed = serializer.CompactDeserialize[cVirtualComplexUnion](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.BINARY:
            with nogil:
                needed = serializer.BinaryDeserialize[cVirtualComplexUnion](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.JSON:
            with nogil:
                needed = serializer.JSONDeserialize[cVirtualComplexUnion](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        elif proto is __Protocol.COMPACT_JSON:
            with nogil:
                needed = serializer.CompactJSONDeserialize[cVirtualComplexUnion](buf, deref(cpp_obj), serializer.SHARE_EXTERNAL_BUFFER)
        # force a cache reload since the underlying data's changed
        self._load_cache()
        return needed

    def __reduce__(self):
        return (deserialize, (VirtualComplexUnion, serialize(self)))


cdef class List__i64:
    def __init__(self, items=None):
        if isinstance(items, List__i64):
            self._cpp_obj = (<List__i64> items)._cpp_obj
        else:
            self._cpp_obj = move(List__i64._make_instance(items))

    @staticmethod
    cdef create(shared_ptr[vector[int64_t]] c_items):
        inst = <List__i64>List__i64.__new__(List__i64)
        inst._cpp_obj = c_items
        return inst

    @staticmethod
    cdef unique_ptr[vector[int64_t]] _make_instance(object items) except *:
        cdef unique_ptr[vector[int64_t]] c_inst = make_unique[vector[int64_t]]()
        if items is not None:
            for item in items:
                if not isinstance(item, int):
                    raise TypeError(f"{item!r} is not of type int")
                item = <int64_t> item
                deref(c_inst).push_back(item)
        return move_unique(c_inst)

    def __add__(object self, object other):
        return type(self)(itertools.chain(self, other))

    def __getitem__(self, object index_obj):
        cdef shared_ptr[vector[int64_t]] c_inst
        cdef int64_t citem
        if isinstance(index_obj, slice):
            c_inst = make_shared[vector[int64_t]]()
            sz = deref(self._cpp_obj).size()
            for index in range(*index_obj.indices(sz)):
                citem = deref(self._cpp_obj.get())[index]
                deref(c_inst).push_back(citem)
            return List__i64.create(c_inst)
        else:
            index = <int?>index_obj
            size = len(self)
            # Convert a negative index
            if index < 0:
                index = size + index
            if index >= size or index < 0:
                raise IndexError('list index out of range')
            citem = deref(self._cpp_obj.get())[index]
            return citem

    def __len__(self):
        return deref(self._cpp_obj).size()

    def __richcmp__(self, other, op):
        cdef int cop = op
        if cop not in (2, 3):
            raise TypeError("unorderable types: {}, {}".format(type(self), type(other)))
        if not (isinstance(self, Iterable) and isinstance(other, Iterable)):
            return cop != 2
        if (len(self) != len(other)):
            return cop != 2

        for one, two in zip(self, other):
            if one != two:
                return cop != 2

        return cop == 2

    def __hash__(self):
        if not self.__hash:
            self.__hash = hash(tuple(self))
        return self.__hash

    def __contains__(self, item):
        if not self or item is None:
            return False
        if not isinstance(item, int):
            return False
        cdef int64_t citem = item
        cdef vector[int64_t] vec = deref(
            self._cpp_obj.get())
        return std_libcpp.find(vec.begin(), vec.end(), citem) != vec.end()

    def __iter__(self):
        if not self:
            raise StopIteration
        cdef int64_t citem
        for citem in deref(self._cpp_obj):
            yield citem

    def __repr__(self):
        if not self:
            return 'i[]'
        return f'i[{", ".join(map(repr, self))}]'

    def __reversed__(self):
        if not self:
            raise StopIteration
        cdef int64_t citem
        cdef vector[int64_t] vec = deref(
            self._cpp_obj.get())
        cdef vector[int64_t].reverse_iterator loc = vec.rbegin()
        while loc != vec.rend():
            citem = deref(loc)
            yield citem
            inc(loc)

    def index(self, item, start not None=__NOTSET, stop not None=__NOTSET):
        err = ValueError(f'{item} is not in list')
        if not self or item is None:
            raise err
        offset_begin = offset_end = 0
        if stop is not __NOTSET or start is not __NOTSET:
            # Like self[start:stop].index(item)
            size = len(self)
            stop = stop if stop is not __NOTSET else size
            start = start if start is not __NOTSET else 0
            # Convert stop to a negative position.
            if stop > 0:
                stop = min(stop - size, 0)
            if stop <= -size:
                raise err  # List would be empty
            offset_end = -stop
            # Convert start to always be positive
            if start < 0:
                start = max(size + start, 0)
            if start >= size:
                raise err  # past end of list
            offset_begin = start

        if not isinstance(item, int):
            raise err
        cdef int64_t citem = item
        cdef vector[int64_t] vec = deref(self._cpp_obj.get())
        cdef vector[int64_t].iterator end = std_libcpp.prev(vec.end(), <int64_t>offset_end)
        cdef vector[int64_t].iterator loc = std_libcpp.find(
            std_libcpp.next(vec.begin(), <int64_t>offset_begin),
            end,
            citem
        )
        if loc != end:
            return <int64_t> std_libcpp.distance(vec.begin(), loc)
        raise err

    def count(self, item):
        if not self or item is None:
            return 0
        if not isinstance(item, int):
            return 0
        cdef int64_t citem = item
        cdef vector[int64_t] vec = deref(self._cpp_obj.get())
        return <int64_t> std_libcpp.count(vec.begin(), vec.end(), citem)


Sequence.register(List__i64)

cdef class List__string:
    def __init__(self, items=None):
        if isinstance(items, List__string):
            self._cpp_obj = (<List__string> items)._cpp_obj
        else:
            self._cpp_obj = move(List__string._make_instance(items))

    @staticmethod
    cdef create(shared_ptr[vector[string]] c_items):
        inst = <List__string>List__string.__new__(List__string)
        inst._cpp_obj = c_items
        return inst

    @staticmethod
    cdef unique_ptr[vector[string]] _make_instance(object items) except *:
        cdef unique_ptr[vector[string]] c_inst = make_unique[vector[string]]()
        if items is not None:
            for item in items:
                if not isinstance(item, str):
                    raise TypeError(f"{item!r} is not of type str")
                deref(c_inst).push_back(item.encode('UTF-8'))
        return move_unique(c_inst)

    def __add__(object self, object other):
        return type(self)(itertools.chain(self, other))

    def __getitem__(self, object index_obj):
        cdef shared_ptr[vector[string]] c_inst
        cdef string citem
        if isinstance(index_obj, slice):
            c_inst = make_shared[vector[string]]()
            sz = deref(self._cpp_obj).size()
            for index in range(*index_obj.indices(sz)):
                citem = deref(self._cpp_obj.get())[index]
                deref(c_inst).push_back(citem)
            return List__string.create(c_inst)
        else:
            index = <int?>index_obj
            size = len(self)
            # Convert a negative index
            if index < 0:
                index = size + index
            if index >= size or index < 0:
                raise IndexError('list index out of range')
            citem = deref(self._cpp_obj.get())[index]
            return bytes(citem).decode('UTF-8')

    def __len__(self):
        return deref(self._cpp_obj).size()

    def __richcmp__(self, other, op):
        cdef int cop = op
        if cop not in (2, 3):
            raise TypeError("unorderable types: {}, {}".format(type(self), type(other)))
        if not (isinstance(self, Iterable) and isinstance(other, Iterable)):
            return cop != 2
        if (len(self) != len(other)):
            return cop != 2

        for one, two in zip(self, other):
            if one != two:
                return cop != 2

        return cop == 2

    def __hash__(self):
        if not self.__hash:
            self.__hash = hash(tuple(self))
        return self.__hash

    def __contains__(self, item):
        if not self or item is None:
            return False
        if not isinstance(item, str):
            return False
        cdef string citem = item.encode('UTF-8')
        cdef vector[string] vec = deref(
            self._cpp_obj.get())
        return std_libcpp.find(vec.begin(), vec.end(), citem) != vec.end()

    def __iter__(self):
        if not self:
            raise StopIteration
        cdef string citem
        for citem in deref(self._cpp_obj):
            yield bytes(citem).decode('UTF-8')

    def __repr__(self):
        if not self:
            return 'i[]'
        return f'i[{", ".join(map(repr, self))}]'

    def __reversed__(self):
        if not self:
            raise StopIteration
        cdef string citem
        cdef vector[string] vec = deref(
            self._cpp_obj.get())
        cdef vector[string].reverse_iterator loc = vec.rbegin()
        while loc != vec.rend():
            citem = deref(loc)
            yield bytes(citem).decode('UTF-8')
            inc(loc)

    def index(self, item, start not None=__NOTSET, stop not None=__NOTSET):
        err = ValueError(f'{item} is not in list')
        if not self or item is None:
            raise err
        offset_begin = offset_end = 0
        if stop is not __NOTSET or start is not __NOTSET:
            # Like self[start:stop].index(item)
            size = len(self)
            stop = stop if stop is not __NOTSET else size
            start = start if start is not __NOTSET else 0
            # Convert stop to a negative position.
            if stop > 0:
                stop = min(stop - size, 0)
            if stop <= -size:
                raise err  # List would be empty
            offset_end = -stop
            # Convert start to always be positive
            if start < 0:
                start = max(size + start, 0)
            if start >= size:
                raise err  # past end of list
            offset_begin = start

        if not isinstance(item, str):
            raise err
        cdef string citem = item.encode('UTF-8')
        cdef vector[string] vec = deref(self._cpp_obj.get())
        cdef vector[string].iterator end = std_libcpp.prev(vec.end(), <int64_t>offset_end)
        cdef vector[string].iterator loc = std_libcpp.find(
            std_libcpp.next(vec.begin(), <int64_t>offset_begin),
            end,
            citem
        )
        if loc != end:
            return <int64_t> std_libcpp.distance(vec.begin(), loc)
        raise err

    def count(self, item):
        if not self or item is None:
            return 0
        if not isinstance(item, str):
            return 0
        cdef string citem = item.encode('UTF-8')
        cdef vector[string] vec = deref(self._cpp_obj.get())
        return <int64_t> std_libcpp.count(vec.begin(), vec.end(), citem)


Sequence.register(List__string)

cdef class Map__i16_string:
    def __init__(self, items=None):
        if isinstance(items, Map__i16_string):
            self._cpp_obj = (<Map__i16_string> items)._cpp_obj
        else:
            self._cpp_obj = move(Map__i16_string._make_instance(items))

    @staticmethod
    cdef create(shared_ptr[cmap[int16_t,string]] c_items):
        inst = <Map__i16_string>Map__i16_string.__new__(Map__i16_string)
        inst._cpp_obj = c_items
        return inst

    @staticmethod
    cdef unique_ptr[cmap[int16_t,string]] _make_instance(object items) except *:
        cdef unique_ptr[cmap[int16_t,string]] c_inst = make_unique[cmap[int16_t,string]]()
        if items is not None:
            for key, item in items.items():
                if not isinstance(key, int):
                    raise TypeError(f"{key!r} is not of type int")
                key = <int16_t> key
                if not isinstance(item, str):
                    raise TypeError(f"{item!r} is not of type str")

                deref(c_inst)[key] = item.encode('UTF-8')
        return move_unique(c_inst)

    def __getitem__(self, key):
        err = KeyError(f'{key}')
        if not self or key is None:
            raise err
        if not isinstance(key, int):
            raise err
        cdef int16_t ckey = key
        cdef cmap[int16_t,string].iterator iter = deref(
            self._cpp_obj).find(ckey)
        if iter == deref(self._cpp_obj).end():
            raise err
        cdef string citem = deref(iter).second
        return bytes(citem).decode('UTF-8')

    def __len__(self):
        return deref(self._cpp_obj).size()

    def __iter__(self):
        if not self:
            raise StopIteration
        cdef int16_t citem
        for pair in deref(self._cpp_obj):
            citem = pair.first
            yield citem

    def __richcmp__(self, other, op):
        cdef int cop = op
        if cop not in (2, 3):
            raise TypeError("unorderable types: {}, {}".format(type(self), type(other)))
        if not (isinstance(self, Mapping) and isinstance(other, Mapping)):
            return cop != 2
        if (len(self) != len(other)):
            return cop != 2

        for key in self:
            if key not in other:
                return cop != 2
            if other[key] != self[key]:
                return cop != 2

        return cop == 2

    def __hash__(self):
        if not self.__hash:
            self.__hash = hash(tuple(self.items()))
        return self.__hash

    def __repr__(self):
        if not self:
            return 'i{}'
        return f'i{{{", ".join(map(lambda i: f"{repr(i[0])}: {repr(i[1])}", self.items()))}}}'

    def __contains__(self, key):
        if not self or key is None:
            return False
        if not isinstance(key, int):
            return False
        cdef int16_t ckey = key
        return deref(self._cpp_obj).count(ckey) > 0

    def get(self, key, default=None):
        if not self or key is None:
            return default
        try:
            if not isinstance(key, int):
                key = int(key)
        except Exception:
            return default
        if not isinstance(key, int):
            return default
        if key not in self:
            return default
        return self[key]

    def keys(self):
        return self.__iter__()

    def values(self):
        if not self:
            raise StopIteration
        cdef string citem
        for pair in deref(self._cpp_obj):
            citem = pair.second
            yield bytes(citem).decode('UTF-8')

    def items(self):
        if not self:
            raise StopIteration
        cdef int16_t ckey
        cdef string citem
        for pair in deref(self._cpp_obj):
            ckey = pair.first
            citem = pair.second

            yield (ckey, bytes(citem).decode('UTF-8'))



Mapping.register(Map__i16_string)

containerTypedef = Map__i16_string
