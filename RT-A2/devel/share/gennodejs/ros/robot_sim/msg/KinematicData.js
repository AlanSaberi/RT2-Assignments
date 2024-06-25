// Auto-generated. Do not edit!

// (in-package robot_sim.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class KinematicData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance = null;
      this.vel_x_avrg = null;
      this.vel_y_avrg = null;
    }
    else {
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('vel_x_avrg')) {
        this.vel_x_avrg = initObj.vel_x_avrg
      }
      else {
        this.vel_x_avrg = 0.0;
      }
      if (initObj.hasOwnProperty('vel_y_avrg')) {
        this.vel_y_avrg = initObj.vel_y_avrg
      }
      else {
        this.vel_y_avrg = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KinematicData
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [vel_x_avrg]
    bufferOffset = _serializer.float32(obj.vel_x_avrg, buffer, bufferOffset);
    // Serialize message field [vel_y_avrg]
    bufferOffset = _serializer.float32(obj.vel_y_avrg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KinematicData
    let len;
    let data = new KinematicData(null);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel_x_avrg]
    data.vel_x_avrg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel_y_avrg]
    data.vel_y_avrg = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_sim/KinematicData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9801d782b5cb7db4871c31b5d325e5f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 distance
    float32 vel_x_avrg
    float32 vel_y_avrg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KinematicData(null);
    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.vel_x_avrg !== undefined) {
      resolved.vel_x_avrg = msg.vel_x_avrg;
    }
    else {
      resolved.vel_x_avrg = 0.0
    }

    if (msg.vel_y_avrg !== undefined) {
      resolved.vel_y_avrg = msg.vel_y_avrg;
    }
    else {
      resolved.vel_y_avrg = 0.0
    }

    return resolved;
    }
};

module.exports = KinematicData;
