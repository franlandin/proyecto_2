'use strict'

const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const MODEL_NAME = "activities"; //Mongoose

const ActivitySchema = new Schema({

    username: {
       type: String,
       required: true
    }, 
    time: Date,
    type: String
    
});
const model = mongoose.model(MODEL_NAME, ActivitySchema);


function toJSON(obj) {
 return  {
   id: obj._id,
   username: obj.username,
   link: obj.link,
 }
 
}
module.exports = {
 model: mongoose.model(MODEL_NAME),
 toJSON,
 model
};