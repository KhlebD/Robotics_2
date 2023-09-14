// Auto-generated. Do not edit!

// (in-package turtlebot3_gazebo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class skillsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.info = null;
    }
    else {
      if (initObj.hasOwnProperty('info')) {
        this.info = initObj.info
      }
      else {
        this.info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type skillsRequest
    // Serialize message field [info]
    bufferOffset = _serializer.string(obj.info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type skillsRequest
    let len;
    let data = new skillsRequest(null);
    // Deserialize message field [info]
    data.info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.info);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlebot3_gazebo/skillsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c10fc26d5cca9a4b9114f5fc5dea9570';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new skillsRequest(null);
    if (msg.info !== undefined) {
      resolved.info = msg.info;
    }
    else {
      resolved.info = ''
    }

    return resolved;
    }
};

class skillsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type skillsResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int64(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type skillsResponse
    let len;
    let data = new skillsResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'turtlebot3_gazebo/skillsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b05623554ab950ed237d43d45f0b4dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new skillsResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: skillsRequest,
  Response: skillsResponse,
  md5sum() { return '229397e1a56adaf3792840999a6595c1'; },
  datatype() { return 'turtlebot3_gazebo/skills'; }
};
