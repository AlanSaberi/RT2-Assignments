// Auto-generated. Do not edit!

// (in-package robot_sim.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GoalSummaryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalSummaryRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalSummaryRequest
    let len;
    let data = new GoalSummaryRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_sim/GoalSummaryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalSummaryRequest(null);
    return resolved;
    }
};

class GoalSummaryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goals_reached = null;
      this.goals_cancelled = null;
    }
    else {
      if (initObj.hasOwnProperty('goals_reached')) {
        this.goals_reached = initObj.goals_reached
      }
      else {
        this.goals_reached = 0.0;
      }
      if (initObj.hasOwnProperty('goals_cancelled')) {
        this.goals_cancelled = initObj.goals_cancelled
      }
      else {
        this.goals_cancelled = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalSummaryResponse
    // Serialize message field [goals_reached]
    bufferOffset = _serializer.float32(obj.goals_reached, buffer, bufferOffset);
    // Serialize message field [goals_cancelled]
    bufferOffset = _serializer.float32(obj.goals_cancelled, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalSummaryResponse
    let len;
    let data = new GoalSummaryResponse(null);
    // Deserialize message field [goals_reached]
    data.goals_reached = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [goals_cancelled]
    data.goals_cancelled = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_sim/GoalSummaryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '416487591520874cc4b095e59568924c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 goals_reached
    float32 goals_cancelled
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalSummaryResponse(null);
    if (msg.goals_reached !== undefined) {
      resolved.goals_reached = msg.goals_reached;
    }
    else {
      resolved.goals_reached = 0.0
    }

    if (msg.goals_cancelled !== undefined) {
      resolved.goals_cancelled = msg.goals_cancelled;
    }
    else {
      resolved.goals_cancelled = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GoalSummaryRequest,
  Response: GoalSummaryResponse,
  md5sum() { return '416487591520874cc4b095e59568924c'; },
  datatype() { return 'robot_sim/GoalSummary'; }
};
