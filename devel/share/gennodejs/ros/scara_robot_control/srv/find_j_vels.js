// Auto-generated. Do not edit!

// (in-package scara_robot_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class find_j_velsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vx = null;
      this.vy = null;
      this.vz = null;
      this.wx = null;
      this.wy = null;
      this.wz = null;
    }
    else {
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('vz')) {
        this.vz = initObj.vz
      }
      else {
        this.vz = 0.0;
      }
      if (initObj.hasOwnProperty('wx')) {
        this.wx = initObj.wx
      }
      else {
        this.wx = 0.0;
      }
      if (initObj.hasOwnProperty('wy')) {
        this.wy = initObj.wy
      }
      else {
        this.wy = 0.0;
      }
      if (initObj.hasOwnProperty('wz')) {
        this.wz = initObj.wz
      }
      else {
        this.wz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type find_j_velsRequest
    // Serialize message field [vx]
    bufferOffset = _serializer.float64(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float64(obj.vy, buffer, bufferOffset);
    // Serialize message field [vz]
    bufferOffset = _serializer.float64(obj.vz, buffer, bufferOffset);
    // Serialize message field [wx]
    bufferOffset = _serializer.float64(obj.wx, buffer, bufferOffset);
    // Serialize message field [wy]
    bufferOffset = _serializer.float64(obj.wy, buffer, bufferOffset);
    // Serialize message field [wz]
    bufferOffset = _serializer.float64(obj.wz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type find_j_velsRequest
    let len;
    let data = new find_j_velsRequest(null);
    // Deserialize message field [vx]
    data.vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vz]
    data.vz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wx]
    data.wx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wy]
    data.wy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wz]
    data.wz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_robot_control/find_j_velsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8848441b29a1bf8fd222cf62b36aa991';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64 vx
    float64 vy
    float64 vz
    float64 wx
    float64 wy
    float64 wz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new find_j_velsRequest(null);
    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.vz !== undefined) {
      resolved.vz = msg.vz;
    }
    else {
      resolved.vz = 0.0
    }

    if (msg.wx !== undefined) {
      resolved.wx = msg.wx;
    }
    else {
      resolved.wx = 0.0
    }

    if (msg.wy !== undefined) {
      resolved.wy = msg.wy;
    }
    else {
      resolved.wy = 0.0
    }

    if (msg.wz !== undefined) {
      resolved.wz = msg.wz;
    }
    else {
      resolved.wz = 0.0
    }

    return resolved;
    }
};

class find_j_velsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.q1_dot = null;
      this.q2_dot = null;
      this.q3_dot = null;
    }
    else {
      if (initObj.hasOwnProperty('q1_dot')) {
        this.q1_dot = initObj.q1_dot
      }
      else {
        this.q1_dot = 0.0;
      }
      if (initObj.hasOwnProperty('q2_dot')) {
        this.q2_dot = initObj.q2_dot
      }
      else {
        this.q2_dot = 0.0;
      }
      if (initObj.hasOwnProperty('q3_dot')) {
        this.q3_dot = initObj.q3_dot
      }
      else {
        this.q3_dot = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type find_j_velsResponse
    // Serialize message field [q1_dot]
    bufferOffset = _serializer.float64(obj.q1_dot, buffer, bufferOffset);
    // Serialize message field [q2_dot]
    bufferOffset = _serializer.float64(obj.q2_dot, buffer, bufferOffset);
    // Serialize message field [q3_dot]
    bufferOffset = _serializer.float64(obj.q3_dot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type find_j_velsResponse
    let len;
    let data = new find_j_velsResponse(null);
    // Deserialize message field [q1_dot]
    data.q1_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q2_dot]
    data.q2_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [q3_dot]
    data.q3_dot = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_robot_control/find_j_velsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d1296d3171dd2cc27e54b82c424f5d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 q1_dot
    float64 q2_dot
    float64 q3_dot
    
     
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new find_j_velsResponse(null);
    if (msg.q1_dot !== undefined) {
      resolved.q1_dot = msg.q1_dot;
    }
    else {
      resolved.q1_dot = 0.0
    }

    if (msg.q2_dot !== undefined) {
      resolved.q2_dot = msg.q2_dot;
    }
    else {
      resolved.q2_dot = 0.0
    }

    if (msg.q3_dot !== undefined) {
      resolved.q3_dot = msg.q3_dot;
    }
    else {
      resolved.q3_dot = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: find_j_velsRequest,
  Response: find_j_velsResponse,
  md5sum() { return 'cd20452eba578a523525eab281dd96c5'; },
  datatype() { return 'scara_robot_control/find_j_vels'; }
};
