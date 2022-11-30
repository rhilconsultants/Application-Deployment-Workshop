const express = require('express');
const app = express();
const path = require('path');
const router = express.Router();

router.get('/',function(req,res){
  res.sendFile(path.join(__dirname+'/html/index.html'));
  //__dirname : It will resolve to your project folder.
});

router.get('/health/liveliness',function(req,res){
    res.status(200).send('Healty')
  });

router.get('/health/readiness',function(req,res){
    res.status(200).send('Ready')
  });  

//add the router
app.use('/', router);
app.listen(process.env.port || 3000);

console.log('Running at Port 3000');