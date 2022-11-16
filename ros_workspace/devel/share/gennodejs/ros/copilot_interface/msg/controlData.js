// Auto-generated. Do not edit!

// (in-package copilot_interface.msg)


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
      this.thruster_status = null;
      this.dh_status = null;
      this.target_depth = null;
      this.linear_sense = null;
      this.angular_sense = null;
      this.vertical_sense = null;
      this.camera = null;
    }
    else {
      if (initObj.hasOwnProperty('thruster_status')) {
        this.thruster_status = initObj.thruster_status
      }
      else {
        this.thruster_status = false;
      }
      if (initObj.hasOwnProperty('dh_status')) {
        this.dh_status = initObj.dh_status
      }
      else {
        this.dh_status = false;
      }
      if (initObj.hasOwnProperty('target_depth')) {
        this.target_depth = initObj.target_depth
      }
      else {
        this.target_depth = 0.0;
      }
      if (initObj.hasOwnProperty('linear_sense')) {
        this.linear_sense = initObj.linear_sense
      }
      else {
        this.linear_sense = 0.0;
      }
      if (initObj.hasOwnProperty('angular_sense')) {
        this.angular_sense = initObj.angular_sense
      }
      else {
        this.angular_sense = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_sense')) {
        this.vertical_sense = initObj.vertical_sense
      }
      else {
        this.vertical_sense = 0.0;
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
    // Serialize message field [thruster_status]
    bufferOffset = _serializer.bool(obj.thruster_status, buffer, bufferOffset);
    // Serialize message field [dh_status]
    bufferOffset = _serializer.bool(obj.dh_status, buffer, bufferOffset);
    // Serialize message field [target_depth]
    bufferOffset = _serializer.float32(obj.target_depth, buffer, bufferOffset);
    // Serialize message field [linear_sense]
    bufferOffset = _serializer.float32(obj.linear_sense, buffer, bufferOffset);
    // Serialize message field [angular_sense]
    bufferOffset = _serializer.float32(obj.angular_sense, buffer, bufferOffset);
    // Serialize message field [vertical_sense]
    bufferOffset = _serializer.float32(obj.vertical_sense, buffer, bufferOffset);
    // Serialize message field [camera]
    bufferOffset = _serializer.int32(obj.camera, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type controlData
    let len;
    let data = new controlData(null);
    // Deserialize message field [thruster_status]
    data.thruster_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [dh_status]
    data.dh_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [target_depth]
    data.target_depth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [linear_sense]
    data.linear_sense = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_sense]
    data.angular_sense = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vertical_sense]
    data.vertical_sense = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [camera]
    data.camera = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'copilot_interface/controlData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63fc1b5d7859e5a1c46030e539babe05';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool thruster_status
    bool dh_status
    float32 target_depth
    float32 linear_sense
    float32 angular_sense
    float32 vertical_sense
    int32 camera
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new controlData(null);
    if (msg.thruster_status !== undefined) {
      resolved.thruster_status = msg.thruster_status;
    }
    else {
      resolved.thruster_status = false
    }

    if (msg.dh_status !== undefined) {
      resolved.dh_status = msg.dh_status;
    }
    else {
      resolved.dh_status = false
    }

    if (msg.target_depth !== undefined) {
      resolved.target_depth = msg.target_depth;
    }
    else {
      resolved.target_depth = 0.0
    }

    if (msg.linear_sense !== undefined) {
      resolved.linear_sense = msg.linear_sense;
    }
    else {
      resolved.linear_sense = 0.0
    }

    if (msg.angular_sense !== undefined) {
      resolved.angular_sense = msg.angular_sense;
    }
    else {
      resolved.angular_sense = 0.0
    }

    if (msg.vertical_sense !== undefined) {
      resolved.vertical_sense = msg.vertical_sense;
    }
    else {
      resolved.vertical_sense = 0.0
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
