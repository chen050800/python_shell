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
<v t="chen.20160509101908.1" a="E"><vh>pc 的一些方法</vh>
<v t="chen.20160509102017.1"><vh>ping相关的方法</vh></v>
</v>
<v t="chen.20160509103731.1" a="E"><vh>fw的一些命令</vh>
<v t="chen.20160509103750.1"><vh>连接状态非优先匹配</vh></v>
<v t="chen.20160509105024.1"><vh>测试接口的管理功能</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="chen.20160509101908.1">总结一下sigma用例使用的方法，为以后使用</t>
<t tx="chen.20160509102017.1">@language python
def func_pc_ping(self, ip, pcx = None, num = 4):
    '''
    检查ping，成功返回True， 失败， 返回False
    '''
    if pcx == None:
        pcx = pc1
        
    ret = pcx.ping(ip)
    userlog("NOTICE","test ping :"+str(ret))
    if (ret[0] != '1' or ret[1] != '0'):
        userlog("NOTICE","can't ping ")
        return False
    else:
        userlog("NOTICE","success ping")
        return True</t>
<t tx="chen.20160509103731.1"></t>
<t tx="chen.20160509103750.1">filterconfig set rule_first on </t>
<t tx="chen.20160509105024.1">wget 相应的接口的url地址</t>
</tnodes>
</leo_file>
