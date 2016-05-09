<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="chen.20160425143644.2" a="E"><vh>Nodejs and 自动化测试</vh>
<v t="chen.20160425143756.1"><vh>nodejs and 自动化测试套件</vh>
<v t="chen.20160425144249.1"><vh>robotframework-cheerio</vh></v>
<v t="chen.20160425144718.1"><vh>nodejs 调用本地命令</vh>
<v t="chen.20160425153314.1"><vh>robotframework将数据写入数据库</vh>
<v t="chen.20160426155225.1"><vh>直接修改robotframework源代码，将数据传输到数据库</vh></v>
<v t="chen.20160426160217.1"><vh>将robotframework产生的xml数据，转变成数据库格式</vh></v>
</v>
</v>
<v t="chen.20160425144616.1"><vh>结论：无法找到想应的套件，但可以使用nodejs调用本地命令，来使用robotframework</vh></v>
</v>
<v t="chen.20160425150900.1" a="E"><vh>nodejs and telnet client lib</vh>
<v t="chen.20160426161459.1"><vh>git的库信息</vh></v>
<v t="chen.20160503141301.1"><vh>@file telnet_promiese.js</vh></v>
</v>
<v t="chen.20160503141402.1" a="E"><vh>nodejs and 串口通信</vh>
<v t="chen.20160503141416.1"><vh>串口通信程序</vh></v>
<v t="chen.20160503142222.1"><vh>串口通信程序2</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="chen.20160425143644.2"></t>
<t tx="chen.20160425143756.1">想要找到一套使用nodejs编写的，可以控制测试设备和被测设备的框架。

本思路暂时停止调研， 准备调研 nodejs and telnet client lib
</t>
<t tx="chen.20160425144249.1">https://github.com/bulkan/robotframework-cheerio
这是一个robotframework的remote server lib，使用nodejs编写而成。

</t>
<t tx="chen.20160425144616.1"></t>
<t tx="chen.20160425144718.1">使用nodejs调用本地命令来运行robotframework。
@language nodejs
const exec = require('child_process').exec;
const child = exec('ping 127.0.0.1 -c 4',
  (error, stdout, stderr) =&gt; {
    console.log(`stdout: ${stdout}`);
    console.log(`stderr: ${stderr}`);
    if (error !== null) {
      console.log(`exec error: ${error}`);
    }
});

console.log(child.id)</t>
<t tx="chen.20160425150900.1">调查nodejs是否有telnet的lib库，来使用telnet协议连接串口。</t>
<t tx="chen.20160425153314.1" annotate="7d71002855087072696f7269747971014b13550a707269736574646174657102550a323031362d30342d32357103752e" icons="5d71007d71012855026f6e71025505766e6f646571035504747970657104550466696c6571055507796f666673657471064b005508636c656f49636f6e710755013171086805583d0000002f7573722f6c69622f707974686f6e322e372f736974652d7061636b616765732f6c656f2f49636f6e732f636c656f2f63686b626f78626c6b2e706e677109550478706164710a4b0155057768657265710b550e6265666f7265486561646c696e65710c5507786f6666736574710d4b02550772656c50617468710e5812000000636c656f2f63686b626f78626c6b2e706e67710f75612e">1 可以解析日志文件，并将之传输到数据库中。
2 找到一个xml解析，将xml文件解析到数据库中。</t>
<t tx="chen.20160426155225.1">结论：需要修改源代码， 工作量比较大。</t>
<t tx="chen.20160426160217.1">https://github.com/robotframework/DbBot

DbBot is a Python script to serialize Robot Framework output files into a SQLite database.</t>
<t tx="chen.20160426161459.1">telnet client
https://github.com/mkozjak/node-telnet-client

telnet server
https://github.com/TooTallNate/node-telnet</t>
<t tx="chen.20160503141402.1"></t>
<t tx="chen.20160503141416.1">https://github.com/voodootikigod/node-serialport#serialport-path-options-openimmediately-callback

var SerialPort = require("serialport").SerialPort;
var fs= require("fs");
var loging="";
var ack=2;
var nak=3;
var serialPort = new SerialPort("COM3", {
  baudrate: 115200
}, false); // this is the openImmediately flag [default is true]

serialPort.open(function (error) {
  if ( error ) {
    console.log('failed to open: '+error);
  } else {
    console.log('open');
    serialPort.on('data', function(data) {
      loging=data.toString();
      if (data.toString().indexOf('M') &gt; -1) {
         console.log( 'Unlocking!');
      }
      else if (data.toString().indexOf('D') &gt; -1) {
        console.log( 'Locking!');
      }
      else  if (data.toString().indexOf(ack)&gt;-1){
        console.log("errorlocking")
      }

      //
    // console.log(loging.indexof('M'));
      console.log('data received: ' + data);
      fs.appendFile("lng", loging);


    });

    serialPort.write("ls\n", function(err, results) {
      console.log('err ' + err);
      console.log('results ' + results);
    });
    fs.writeFile("loging", loging);
  }
});</t>
<t tx="chen.20160503142222.1">var SerialPort = require("serialport").SerialPort;  //引入模块
var SlowBuffer = require('buffer').SlowBuffer;
var portName = 'COM3'; //定义串口名
var serialPort = new SerialPort(
 "COM3", {
   baudRate: 115200,  //波特率
   dataBits: 8,    //数据位
   parity: 'none',   //奇偶校验
   stopBits: 1,   //停止位
   flowControl: false 
}, false); 
serialPort.open(function(error){ 
   if(error){ 
     console.log("打开端口"+portName+"错误："+error);
   }else{  
   	console.log("打开端口成功，正在监听数据中");
     serialPort.on('data',function(data){
		console.log(data);
		console.log(data.length);
		console.log(data[0]);
		console.log(Buffer.isBuffer(data));
     });
	serialPort.write("ls\n",function(err,results){
		console.log('err:'+err);
		console.log('results:'+results);
	 });
   }
});</t>
</tnodes>
</leo_file>
