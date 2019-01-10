# ug_connection README
English and Chinese version of README are both avaliable. 本项目有中英文版README。

## README English Version
兼容性：
![](https://img.shields.io/badge/OS%20X-10.14-brightgreen.svg)
![](https://img.shields.io/badge/OS%20X-10.13-brightgreen.svg)
![](https://img.shields.io/badge/Script-sh-blue.svg)
![](https://img.shields.io/badge/License-MIT-blue.svg)

MAC OS X and expect installed Linux Systems Only。Windows Systems are not supported。

If you are a windows user, please check @junhaoliao/UG_Remote：
https://github.com/junhaoliao/UG_Remote

### Configuration when you first use！！！
1. cd to the directory containing connect_ug.sh。
2. Open start_vnc.sh and establish_vnc_turnal.sh using text editor and change the setting in the first few lines，including "set user USERNAMEHERE" and "set passwd PWHERE". USERNAMEHERE should be your UTORid, PWHERE should be the password to your ugsystem. Save and exit after you change USERNAMEHERE and PWHERE. You do NOT need to change anything else.
3. 配置完成。

### How to use the script？
1. Open terminal，cd to the directory containing connect_ug.sh.
2. Enter```sh connect_ug.sh```to run the. script。
3. Two new terminal windows will pop. First you will see the window written"```enter an id to ug computer: ```"(Auto Focus)。
4. Enter the id of the computer you want to login and enter，ie：180.
5. Wait until the connection is fully done。
6. Check the information of the VNC conncection，please check some important places：
ie：
```
To Connect via Linux/Mac (without 'vncviewer')
==============================================
	Terminal:
		ssh -L 5903:127.0.0.1:5903 hesiwei1@ug180.eecg.toronto.edu 
	VNC:
		Remote Host: 127.0.0.1:3

Port for the connection：5903
computer id for the connection：ug180
```
7. Do not close this terminal window, just put it somewhere！
8. Switch to the other terminal window，Enter the id```enter the id to ug computer as shown:```,which is the computer id for the connection in step 6,ie：180。
9. ```enter the vnc port to the computer as shown:```，which is the port for the connection in step 6，ie：5903。
10. You will then be directed to ~/ece297(If you already build the environment for ece297)
11. Do not close this open. Open vncview, connect to 127.0.0.1:5901, and follow the instructions to finish connection.
12. Done。
13. After you do all your work, enter the following command in the first terminal window```ece297vnc stop all```which is already shown in the terminal window. You just need to hit the enter。[You should always do this due to security reason]


## README 中文版指南

兼容性：
![](https://img.shields.io/badge/OS%20X-10.14-brightgreen.svg)
![](https://img.shields.io/badge/OS%20X-10.13-brightgreen.svg)
![](https://img.shields.io/badge/Script-sh-blue.svg)
![](https://img.shields.io/badge/License-MIT-blue.svg)

MAC OS X 和预装expect的Linux系统。不支持Windows系统。

Windows版本请参考@junhaoliao/UG_Remote：
https://github.com/junhaoliao/UG_Remote

### 首次使用的配置！！！
1. 首先cd进入connect_ug.sh所在文件夹。
2. 使用文本编辑器依次打开start_vnc.sh，与establish_vnc_turnal.sh，并修改这两个文件最上方的设置信息，包括"set user USERNAMEHERE" 与 "set passwd PWHERE"。 其中USERNAMEHERE填写使用者的UTORid， PWHERE填写使用者的ug系统密码。修改后保存退出，其余任何地方都不需要进行任何修改。
3. 配置完成。

### 如何使用该组脚本？
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
13. 完成所有进行后，为了安全原因请返回首次弹出的窗口运行```ece297vnc stop all```，这句话已经自动在命令行中出现，直接回车运行即可。[为了安全原因，每次结束操作后都应该执行本命令！]
