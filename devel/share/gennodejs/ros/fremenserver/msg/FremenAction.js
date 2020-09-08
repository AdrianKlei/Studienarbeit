// Auto-generated. Do not edit!

// (in-package fremenserver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FremenActionGoal = require('./FremenActionGoal.js');
let FremenActionResult = require('./FremenActionResult.js');
let FremenActionFeedback = require('./FremenActionFeedback.js');

//-----------------------------------------------------------

class FremenAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new FremenActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new FremenActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new FremenActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FremenAction
    // Serialize message field [action_goal]
    bufferOffset = FremenActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = FremenActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = FremenActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FremenAction
    let len;
    let data = new FremenAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = FremenActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = FremenActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = FremenActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += FremenActionGoal.getMessageSize(object.action_goal);
    length += FremenActionResult.getMessageSize(object.action_result);
    length += FremenActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fremenserver/FremenAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14f6cce3a70244709ad0705f23811952';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    FremenActionGoal action_goal
    FremenActionResult action_result
    FremenActionFeedback action_feedback
    
    ================================================================================
    MSG: fremenserver/FremenActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    FremenGoal goal
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: fremenserver/FremenGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    string   operation 	#the operation can be 'add', 'addvalues', 'predict', 'forecast', 'entropy', 'evaluate', 'detect', 'update', 'delete'
    			#'add' adds a sequence of given (by ID) state measurements and the times these have been obtained to the state's model, if ID is given for the first time, a new state is created and added to the model
    			#'addvalues' adds a sequence of given (by ID) value measurements and the times these have been obtained to the state's model, if ID is given for the first time, a new state is created and added to the model
    			#'predict'  calculates a sequence of probabilities of the state ID for the given times (i.e. prediction of one state for multiple time instants)
    			#'forecast'  calculates a sequence of probabilities of the states with given 'ids' for the given time (i.e. prediction of mutiple states for a single time instant)
    			#'entropy'  calculates a sequence of entropies of the state ID for the given times - this is to support exploration
    			#'evaluate' predicts the state for the given times, compares the prediction with ground truth and returns the prediction errors for model orders from 0 to the order specified. Meant to help to decide which order to use for the 'predict' action. 
    			#'detect' detects anomalies by predicting the state for the given times, comparing with ground truth and flagging up discrepancies that were beyond a certain 'confidence' level 
    			#'delete' removes the current state from the collection of states   
    			#'update' is reserved, will be used int the future for recalculating the models
    
    string  id	  	#specifies the ID of the state to be manipulated 
    string[]  ids	  	#specifies the IDs of the states to be manipulated - explusively fot the 'forecast' action
    uint32[]  times 	#the time instants for the 'predict', 'add', 'entropy' and 'evaluate' actions
    
    #specific for the 'predict', 'evaluate' and 'detect' actions
    int32    order 		#number of periodic processes to use for the purpose of prediction (0 means a static model, typical value is 2), maximal order used for evaluation of the 'evaluate' action
    
    #specific for the 'forecast' actions
    int32[]  orders	  	#same as previous one, but for all states in the **ids** 
    
    #specific for the 'add' and 'evaluate' action
    bool[]      states   	#sequence of states observed at the particular times - specific to the 'add' action 	(this is for backward compatibility)
    float32[]   values   	#sequence of values observed at the particular times - specific to the 'addvalues' action, (I recommend to normalize the values so they fit 0-1)
    
    #specific for the 'detect' 
    float32   confidence   	#confidence level for the anomaly detection
    
    
    ================================================================================
    MSG: fremenserver/FremenActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    FremenResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: fremenserver/FremenResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    int32 success		#action result - positive value indicates success, negative indicates error
    string message 		#detailed message
    float32[] probabilities	#probabilities of the states calculated by the 'predict' action for the particular 'times', probability of a given observation for the 'detect' action
    float32[] entropies	#entropies of the states calculated by the 'entropy' action for the particular 'times'
    float32[] errors 	#prediction errors for the various model orders given by the 'evaluate' action
    uint32[]  anomalyTimes 	#the time instants of detected anomalies 
    uint32[]  anomalyValues	#the observed anomaous states 
    
    ================================================================================
    MSG: fremenserver/FremenActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    FremenFeedback feedback
    
    ================================================================================
    MSG: fremenserver/FremenFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    string status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FremenAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = FremenActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new FremenActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = FremenActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new FremenActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = FremenActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new FremenActionFeedback()
    }

    return resolved;
    }
};

module.exports = FremenAction;
