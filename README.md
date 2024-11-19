# L4D2 HspAF Plugins Complete

![LOL](images/LOL.png)

### 前情提要
* 这是我自己搓的一套插件包，放到猫网当网盘用防丢
* 包含的插件来自五湖四海的各位dalao，总之没一个是我自己写的
* 新上传的包整体溯源更新，重新编译消除了绝大部分插件由AutoExecConfig生成的配置文件
* 全自动SCAR`IA_scar_modify.smx`是不公开的付费插件，为维护作者权益不会上传
* 感兴趣请访问作者[**爱发电**](https://ifdian.net/item/2f6a9a581b3511ef9f9352540025c377)获取
* 或者使用平替[**Alliedmodes**](https://forums.alliedmods.net/showthread.php?t=349202)
* 修改武器数据请参考`cfg/vote/weapon/weapon_info.cfg`
### 注意自定义内容
* 服名：`addons\sourcemod\data\hostname.txt`
* 管理员认证：`addons\sourcemod\configs\l4d2_admins_simple.cfg`
* 广告：`addons\sourcemod\configs\advertisements.txt`
* 连接Mysql数据库：`addons\sourcemod\configs\databases.cfg中第35行`
* 崩溃日志所有权：`addons\sourcemod\configs\core.cfg中第160行`
* `mymotd`、 `myhost`
### 启动项（仅参考）
* `-strictportbind` `-nobreakpad` `-noassert` `-game left4dead2`
* `+mp_gamemode coop` `+exec server.cfg` `-tickrate 100`
* `-ip 0.0.0.0` `-port 27015` `+map c2m1` `+sv_setmax 31`
### 注意分发文件
* 为客户端分发：`addons\Hit_Info.vpk`以确保客户端能正常生效击中反馈显示效果和音效
* 为客户端分发：`addons\Dance_Play.vpk`以确保客户端正常生效跳舞动作和声音，~~避免因下载缓慢或莫名Error导致卡在加载界面~~,经修改源码，有文件的正常跳，没文件的罚站
* 注意：`Dance_Play.vpk`在服务端也必须存留一份
### 无数据库的安装问题
* 移除排名插件在：`sql/l4d_stats.smx`来避免持续的报错
* 重新启用警报车提示插件在：`optional/Del/l4d2_create_panic.smx`来确保功能完整

### 自娱自乐
