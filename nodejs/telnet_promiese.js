//@+leo-ver=5-thin
//@+node:chen.20160503141301.1: * @file telnet_promiese.js
var telnet = require('telnet-client');
var connection = new telnet();

var params = {
  host: '60.60.228.120',
  port: 23,
  shellPrompt: 'themis>',
  timeout: 1500,
  password: 'xxxx',
  debug: true,
  // removeEcho: 4
};

connection.connect(params)
.then(function(prompt) {
  connection.exec("ls /")
  .then(function(res) {
    console.log('promises result:', res)
  })
}, function(error) {
  console.log('promises reject:', error)
});
//@-leo
