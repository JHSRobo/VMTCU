// Auto-generated. Do not edit!

// (in-package rov_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class controlData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.thrusterStatus = null;
      this.dhStatus = null;
      this.targetDepth = null;
      this.linearSense = null;
      this.angularSense = null;
      this.verticalSense = null;
      this.camera = null;
    }
    else {
      if (initObj.hasOwnProperty('thrusterStatus')) {
        this.thrusterStatus = initObj.thrusterStatus
      }
      else {
        this.thrusterStatus = false;
      }
      if (initObj.hasOwnProperty('dhStatus')) {
        this.dhStatus = initObj.dhStatus
      }
      else {
        this.dhStatus = false;
      }
      if (initObj.hasOwnProperty('targetDepth')) {
        this.targetDepth = initObj.targetDepth
      }
      else {
        this.targetDepth = 0.0;
      }
      if (initObj.hasOwnProperty('linearSense')) {
        this.linearSense = initObj.linearSense
      }
      else {
        this.linearSense = 0.0;
      }
      if (initObj.hasOwnProperty('angularSense')) {
        this.angularSense = initObj.angularSense
      }
      else {
        this.angularSense = 0.0;
      }
      if (initObj.hasOwnProperty('verticalSense')) {
        this.verticalSense = initObj.verticalSense
      }
      else {
        this.verticalSense = 0.0;
      }
      if (initObj.hasOwnProperty('camera')) {
        this.camera = initObj.camera
      }
      else {
        this.camera = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type controlData
    // Serialize message field [thrusterStatus]
    bufferOffset = _serializer.bool(obj.thrusterStatus, buffer, bufferOffset);
    // Serialize message field [dhStatus]
    bufferOffset = _serializer.bool(obj.dhStatus, buffer, bufferOffset);
    // Serialize message field [targetDepth]
    bufferOffset = _serializer.float32(obj.targetDepth, buffer, bufferOffset);
    // Serialize message field [linearSense]
    bufferOffset = _serializer.float32(obj.linearSense, buffer, bufferOffset);
    // Serialize message field [angularSense]
    bufferOffset = _serializer.float32(obj.angularSense, buffer, bufferOffset);
    // Serialize message field [verticalSense]
    bufferOffset = _serializer.float32(obj.verticalSense, buffer, bufferOffset);
    // Serialize message field [camera]
    bufferOffset = _serializer.int32(obj.camera, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type controlData
    let len;
    let data = new controlData(null);
    // Deserialize message field [thrusterStatus]
    data.thrusterStatus = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dhStatus]
    data.dhStatus = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [targetDepth]
    data.targetDepth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linearSense]
    data.linearSense = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angularSense]
    data.angularSense = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [verticalSense]
    data.verticalSense = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [camera]
    data.camera = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rov_control/controlData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b57ae0c64bce85cd8b603507396376d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool thrusterStatus
    bool dhStatus
    float32 targetDepth
    float32 linearSense
    float32 angularSense
    float32 verticalSense
    int32 camera
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new controlData(null);
    if (msg.thrusterStatus !== undefined) {
      resolved.thrusterStatus = msg.thrusterStatus;
    }
    else {
      resolved.thrusterStatus = false
    }

    if (msg.dhStatus !== undefined) {
      resolved.dhStatus = msg.dhStatus;
    }
    else {
      resolved.dhStatus = false
    }

    if (msg.targetDepth !== undefined) {
      resolved.targetDepth = msg.targetDepth;
    }
    else {
      resolved.targetDepth = 0.0
    }

    if (msg.linearSense !== undefined) {
      resolved.linearSense = msg.linearSense;
    }
    else {
      resolved.linearSense = 0.0
    }

    if (msg.angularSense !== undefined) {
      resolved.angularSense = msg.angularSense;
    }
    else {
      resolved.angularSense = 0.0
    }

    if (msg.verticalSense !== undefined) {
      resolved.verticalSense = msg.verticalSense;
    }
    else {
      resolved.verticalSense = 0.0
    }

    if (msg.camera !== undefined) {
      resolved.camera = msg.camera;
    }
    else {
      resolved.camera = 0
    }

    return resolved;
    }
};

module.exports = controlData;
