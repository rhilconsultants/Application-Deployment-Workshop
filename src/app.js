const express = require('express');
const app = express();
const path = require('path');
const router = express.Router();
var port = process.env.PORT


// Route application to index.html file.
router.get('/',function(req,res){
  res.sendFile(path.join(__dirname+'/html/index.html'));
  //__dirname : It will resolve to your project folder.
});

// Health Probe - Application Liveliness
router.get('/health/liveliness',function(req,res){
    res.status(200).send('Healty')
  });

// Health Probe - Application Readiness
router.get('/health/readiness',function(req,res){
    res.status(200).send('Ready')
  });  

//add the router
app.use('/', router);
app.listen(port);

console.log(`Running at Port ${port}`);