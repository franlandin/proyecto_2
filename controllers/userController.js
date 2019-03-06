const model = require('../models/userModel');
const crypt = require('../util/crypto');
const Token = require('../auth/token');
const activityService = require('../services/activityService');



function doLogin (req, res){
    const uname = req.body.username;
    model.findByUsername(uname)
    .then(result => {
        console.log(result.length);
        if(result.length !== 1){
            res.render('index', {message : {type : 'error', text: 'bad credentials'}});
        } else{
            const user = result[0];
            const pass = req.body.password;
            const dbPass = user.userpass;
            const cryptPasswd = crypt.encryptPass(pass);
            if(cryptPasswd !== dbPass){
                console.log("vas mal");
                res.render('index', {message : {type : 'error', text: 'bad credentials'}})
            } else {
                const info = {id: user.id, name: user.username};
                const name = info.name;
                console.log("vas bien");
                activityService.insertActivity(name, "1")
                .then(() => {
                    console.log("insertado")
                    
                }).
                catch(err => {
                    //res.render('error', {message: {color: 'red', text: 'something failed'}, error: err});
                    console.log('error: '+err);
                });                  
                var token = Token.buildToken(info);
                res.redirect(`/pets/token/${token}`)                             
            }
            
        }
    })
    .catch(err => {
        res.render('error', {message: {color: 'red', text: 'something failed'}, error: err});
    })
}

function doRegister (req, res){
    const un = req.body.username;
    model.findByUsername(un)
    .then(result => {
        console.log(result.length);
        if(result.length !== 0){
            console.log("vas bien");
            res.render('login/register', {message : {type : 'error', text: 'User is taken'}});
        } else{
            const pass = req.body.password;
            const pass2 = req.body.password2;
            if(pass !== pass2){
                res.render('login/register', {message : {type : 'error', text: 'Passwords dont match'}});
            }
            else{

                const pwd = req.body.password;
                const cryptPasswd = crypt.encryptPass(pwd);
                model.registerUser(un, cryptPasswd).then(() => {
                    activityService.insertActivity(un, "2")
                    .then (() => {
                        res.render('login/login',  {message : {type : 'info', text: 'Usuario creado'}} )})
                })
            }
        }
    })
    .catch(err => {
        res.render('error', {message: {color: 'red', text: 'something failed'}, error: err});
    })
}

module.exports = {
    doLogin,
    doRegister
}
        