var express = require('express');
var router = express.Router();
var userController = require('../controllers/userController');
var activityController = require('../controllers/activityController');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});
router.get('/login', function(req, res, next) {
  res.render('login/login');
});
router.get('/register', function(req, res, next) {
  res.render('login/register');
});
router.get('/logout', function(req, res, next) {
  res.redirect('/');
});
router.post('/login',  userController.doLogin, activityController.insertActivity);

router.post('/register', userController.doRegister);


module.exports = router;
