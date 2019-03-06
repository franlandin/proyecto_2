const mongoActivityModel = require('../models/mongoActivityModel').model;

const findByUsername = name =>{
    return new Promise((resolve, reject) =>{
        mongoActivityModel.findOne({username: name}, (err, result) =>{
            if (err) reject (err);
            resolve(result);
        });
    })
}

const findAll = () =>{
    return new Promise((resolve, reject) =>{
        mongoActivityModel.find({}, (err, result) =>{
            if (err) reject (err);
            resolve(result);
        });
    })
}
const insertActivity = (name, actType)  =>{   
    var activity = {username: name, time: new Date(), type: null};
    if(actType == 1){
        activity.type = "login";
    }
    else if(actType == 2) {
        activity.type = "register";
    }
    return new Promise((resolve, reject) =>{
        mongoActivityModel.create(activity, (err, result) =>{
            if (err) reject (err);
            console.log("1 document inserted");
            resolve(result);
        });
    })
}
const countActivity = ()  =>{   
    return new Promise((resolve, reject) =>{
        mongoActivityModel.aggregate([ { $match: {"username": "admin"}}, {$group: {"_id": "$type", count: {$sum: 1}}}], (err, result) =>{
            if (err) reject (err);
            resolve(result);
        });
    })
}



module.exports = {
    findByUsername,
    findAll,
    insertActivity,
    countActivity
}