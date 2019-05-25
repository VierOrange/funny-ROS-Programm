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

class MorseTranslateRequest {
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
    // Serializes a message object of type MorseTranslateRequest
    // Serialize message field [morse]
    bufferOffset = _serializer.string(obj.morse, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MorseTranslateRequest
    let len;
    let data = new MorseTranslateRequest(null);
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
    return 'morse_service/MorseTranslateRequest';
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
    const resolved = new MorseTranslateRequest(null);
    if (msg.morse !== undefined) {
      resolved.morse = msg.morse;
    }
    else {
      resolved.morse = ''
    }

    return resolved;
    }
};

class MorseTranslateResponse {
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
    // Serializes a message object of type MorseTranslateResponse
    // Serialize message field [mes]
    bufferOffset = _serializer.string(obj.mes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MorseTranslateResponse
    let len;
    let data = new MorseTranslateResponse(null);
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
    return 'morse_service/MorseTranslateResponse';
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
    const resolved = new MorseTranslateResponse(null);
    if (msg.mes !== undefined) {
      resolved.mes = msg.mes;
    }
    else {
      resolved.mes = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: MorseTranslateRequest,
  Response: MorseTranslateResponse,
  md5sum() { return 'c78a90a3ea05e29b7697d19c62ed1c62'; },
  datatype() { return 'morse_service/MorseTranslate'; }
};
