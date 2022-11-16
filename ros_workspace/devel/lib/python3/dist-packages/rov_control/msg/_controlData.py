# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rov_control/controlData.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class controlData(genpy.Message):
  _md5sum = "b57ae0c64bce85cd8b603507396376d2"
  _type = "rov_control/controlData"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool thrusterStatus
bool dhStatus
float32 targetDepth
float32 linearSense
float32 angularSense
float32 verticalSense
int32 camera"""
  __slots__ = ['thrusterStatus','dhStatus','targetDepth','linearSense','angularSense','verticalSense','camera']
  _slot_types = ['bool','bool','float32','float32','float32','float32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       thrusterStatus,dhStatus,targetDepth,linearSense,angularSense,verticalSense,camera

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(controlData, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.thrusterStatus is None:
        self.thrusterStatus = False
      if self.dhStatus is None:
        self.dhStatus = False
      if self.targetDepth is None:
        self.targetDepth = 0.
      if self.linearSense is None:
        self.linearSense = 0.
      if self.angularSense is None:
        self.angularSense = 0.
      if self.verticalSense is None:
        self.verticalSense = 0.
      if self.camera is None:
        self.camera = 0
    else:
      self.thrusterStatus = False
      self.dhStatus = False
      self.targetDepth = 0.
      self.linearSense = 0.
      self.angularSense = 0.
      self.verticalSense = 0.
      self.camera = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2B4fi().pack(_x.thrusterStatus, _x.dhStatus, _x.targetDepth, _x.linearSense, _x.angularSense, _x.verticalSense, _x.camera))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 22
      (_x.thrusterStatus, _x.dhStatus, _x.targetDepth, _x.linearSense, _x.angularSense, _x.verticalSense, _x.camera,) = _get_struct_2B4fi().unpack(str[start:end])
      self.thrusterStatus = bool(self.thrusterStatus)
      self.dhStatus = bool(self.dhStatus)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2B4fi().pack(_x.thrusterStatus, _x.dhStatus, _x.targetDepth, _x.linearSense, _x.angularSense, _x.verticalSense, _x.camera))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 22
      (_x.thrusterStatus, _x.dhStatus, _x.targetDepth, _x.linearSense, _x.angularSense, _x.verticalSense, _x.camera,) = _get_struct_2B4fi().unpack(str[start:end])
      self.thrusterStatus = bool(self.thrusterStatus)
      self.dhStatus = bool(self.dhStatus)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B4fi = None
def _get_struct_2B4fi():
    global _struct_2B4fi
    if _struct_2B4fi is None:
        _struct_2B4fi = struct.Struct("<2B4fi")
    return _struct_2B4fi