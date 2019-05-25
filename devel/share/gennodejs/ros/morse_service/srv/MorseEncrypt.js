// Auto-generated. Do not edit!

// (in-package morse_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MorseEncryptRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mes = null;
    }
    else {
      if (initObj.hasOwnProperty('mes')) {
        this.mes = initObj.mes
      }
      else {
        this.mes = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MorseEncryptRequest
    // Serialize message field [mes]
    bufferOffset = _serializer.string(obj.mes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MorseEncryptRequest
    let len;
    let data = new MorseEncryptRequest(null);
    // Deserialize message field [mes]
    data.mes = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mes.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morse_service/MorseEncryptRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e26588a7352b312645ab47dd17f0e4c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mes
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MorseEncryptRequest(null);
    if (msg.mes !== undefined) {
      resolved.mes = msg.mes;
    }
    else {
      resolved.mes = ''
    }

    return resolved;
    }
};

class MorseEncryptResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.morse = null;
    }
    else {
      if (initObj.hasOwnProperty('morse')) {
        this.morse = initObj.morse
      }
      else {
        this.morse = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MorseEncryptResponse
    // Serialize message field [morse]
    bufferOffset = _serializer.string(obj.morse, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MorseEncryptResponse
    let len;
    let data = new MorseEncryptResponse(null);
    // Deserialize message field [morse]
    data.morse = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.morse.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'morse_service/MorseEncryptResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ffa6d7df23cd5db7167be916fc2c850';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string morse
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MorseEncryptResponse(null);
    if (msg.morse !== undefined) {
      resolved.morse = msg.morse;
    }
    else {
      resolved.morse = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: MorseEncryptRequest,
  Response: MorseEncryptResponse,
  md5sum() { return '1e5e7e36495a9dcab3e1ae207c3374b3'; },
  datatype() { return 'morse_service/MorseEncrypt'; }
};
