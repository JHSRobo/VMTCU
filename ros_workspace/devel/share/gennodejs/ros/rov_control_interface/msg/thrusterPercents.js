// Auto-generated. Do not edit!

// (in-package rov_control_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class thrusterPercents {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.t1 = null;
      this.t2 = null;
      this.t3 = null;
      this.t4 = null;
      this.t5 = null;
      this.t6 = null;
    }
    else {
      if (initObj.hasOwnProperty('t1')) {
        this.t1 = initObj.t1
      }
      else {
        this.t1 = 0;
      }
      if (initObj.hasOwnProperty('t2')) {
        this.t2 = initObj.t2
      }
      else {
        this.t2 = 0;
      }
      if (initObj.hasOwnProperty('t3')) {
        this.t3 = initObj.t3
      }
      else {
        this.t3 = 0;
      }
      if (initObj.hasOwnProperty('t4')) {
        this.t4 = initObj.t4
      }
      else {
        this.t4 = 0;
      }
      if (initObj.hasOwnProperty('t5')) {
        this.t5 = initObj.t5
      }
      else {
        this.t5 = 0;
      }
      if (initObj.hasOwnProperty('t6')) {
        this.t6 = initObj.t6
      }
      else {
        this.t6 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type thrusterPercents
    // Serialize message field [t1]
    bufferOffset = _serializer.int32(obj.t1, buffer, bufferOffset);
    // Serialize message field [t2]
    bufferOffset = _serializer.int32(obj.t2, buffer, bufferOffset);
    // Serialize message field [t3]
    bufferOffset = _serializer.int32(obj.t3, buffer, bufferOffset);
    // Serialize message field [t4]
    bufferOffset = _serializer.int32(obj.t4, buffer, bufferOffset);
    // Serialize message field [t5]
    bufferOffset = _serializer.int32(obj.t5, buffer, bufferOffset);
    // Serialize message field [t6]
    bufferOffset = _serializer.int32(obj.t6, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type thrusterPercents
    let len;
    let data = new thrusterPercents(null);
    // Deserialize message field [t1]
    data.t1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [t2]
    data.t2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [t3]
    data.t3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [t4]
    data.t4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [t5]
    data.t5 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [t6]
    data.t6 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rov_control_interface/thrusterPercents';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '860e29d4fdc02d5eacdfc57885542f75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 t1
    int32 t2
    int32 t3
    int32 t4
    int32 t5
    int32 t6
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new thrusterPercents(null);
    if (msg.t1 !== undefined) {
      resolved.t1 = msg.t1;
    }
    else {
      resolved.t1 = 0
    }

    if (msg.t2 !== undefined) {
      resolved.t2 = msg.t2;
    }
    else {
      resolved.t2 = 0
    }

    if (msg.t3 !== undefined) {
      resolved.t3 = msg.t3;
    }
    else {
      resolved.t3 = 0
    }

    if (msg.t4 !== undefined) {
      resolved.t4 = msg.t4;
    }
    else {
      resolved.t4 = 0
    }

    if (msg.t5 !== undefined) {
      resolved.t5 = msg.t5;
    }
    else {
      resolved.t5 = 0
    }

    if (msg.t6 !== undefined) {
      resolved.t6 = msg.t6;
    }
    else {
      resolved.t6 = 0
    }

    return resolved;
    }
};

module.exports = thrusterPercents;
