// Auto-generated. Do not edit!

// (in-package gpio_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class gpio_statusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gpioNum = null;
    }
    else {
      if (initObj.hasOwnProperty('gpioNum')) {
        this.gpioNum = initObj.gpioNum
      }
      else {
        this.gpioNum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gpio_statusRequest
    // Serialize message field [gpioNum]
    bufferOffset = _serializer.int64(obj.gpioNum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gpio_statusRequest
    let len;
    let data = new gpio_statusRequest(null);
    // Deserialize message field [gpioNum]
    data.gpioNum = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gpio_control/gpio_statusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1f39cba9b623a83c32c1228c8c1d3f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 gpioNum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gpio_statusRequest(null);
    if (msg.gpioNum !== undefined) {
      resolved.gpioNum = msg.gpioNum;
    }
    else {
      resolved.gpioNum = 0
    }

    return resolved;
    }
};

class gpio_statusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gpio_statusResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gpio_statusResponse
    let len;
    let data = new gpio_statusResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gpio_control/gpio_statusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a1255d4d998bd4d6585c64639b5ee9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gpio_statusResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    return resolved;
    }
};

module.exports = {
  Request: gpio_statusRequest,
  Response: gpio_statusResponse,
  md5sum() { return '3b90914d035160dc78631aed0a7b703d'; },
  datatype() { return 'gpio_control/gpio_status'; }
};
