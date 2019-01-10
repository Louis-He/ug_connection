# ug_connection README

兼容性：
![](https://img.shields.io/badge/OS%20X-10.14-brightgreen.svg)
![](https://img.shields.io/badge/OS%20X-10.13-brightgreen.svg)
![](https://img.shields.io/badge/script-sh-blue.svg)

MAC OS X 和预装expect的Linux系统。
不支持Windows系统

## 首次使用的配置！！！
1. 首先cd进入connect_ug.sh所在文件夹。
2. 使用文本编辑器依次打开start_vnc.sh，与establish_vnc_turnal.sh，并修改这两个文件最上方的设置信息，包括"set user USERNAMEHERE" 与 "set passwd PWHERE"。 其中USERNAMEHERE填写使用者的UTORid， PWHERE填写使用者的ug系统密码。修改后保存退出，其余任何地方都不需要进行任何修改。
3. 配置完成。

## 如何使用该组脚本？
1. 打开命令行，首先cd进入connect_ug.sh所在文件夹。
2. 输入```sh connect_ug.sh```来运行主脚本。
3. 开始运行后会弹出两个新的窗口，首先注意弹出“```enter an id to ug computer: ```”提示的窗口(自动聚焦)。
4. 键入你想要登录的机器编号，例如：180。
5. 输入后等待其完成链接。
6. 查看建立的VNC信息，注意几个信息：
ie：
```
To Connect via Linux/Mac (without 'vncviewer')
==============================================
	Terminal:
		ssh -L 5903:127.0.0.1:5903 hesiwei1@ug180.eecg.toronto.edu 
	VNC:
		Remote Host: 127.0.0.1:3

连接的端口：5903
连接主机：ug180
```
7. 将该窗口闲置，千万不要关闭！
8. 打开第二个控制台，输入```enter the id to ug computer as shown:```，也就是第6步中的主机编号，ie：180。
9. ```enter the vnc port to the computer as shown:```，也就是第6步中的主机端口，ie：5903。
10. 完成后将会自动进入ece297的工作目录（如果用户已经建立ece297目录）。
11. 将本窗口闲置，打开vncview，链接127.0.0.1:5901，根据指导输入密码即可登录VNC。
12. 完成操作。
