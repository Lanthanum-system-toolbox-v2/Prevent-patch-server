# 黑域一键补丁Linux服务端
- 版本v0.3.1beta
### 原料
- 一台Linux服务器
### ROOT身份搭建过程
- ssh连接
- 依次运行下列命令
- <code>#apt-get update</code>
- <code>#apt install git</code>
- <code>#apt install openjdk-8-jdk-headless</code>
- <code>#git clone -b prevent_server_linux https://github.com/Lanthanum-system-toolbox-v2/Prevent-patch-server prevent_server</code>
- <code>#cd prevent_server</code>
- 配置config （格式参见分支[prevent_server_win](https://github.com/xzr467706992/Lanthanum_system_toolbox_v2/blob/prevent_server_win/README.md))&&当然你可能需要<code>#apt install vim</code>来为你提供一个编辑器（具体自行谷歌vim的用法)
- <code>#./start.sh</code>
- 尝试连接
- 如需查看日志可在任何目录<code>$lalog</code>或<code>#lalog</code>
### 普通用户身份搭建过程
- ssh连接
- 依次运行下列命令
- <code>$sudo apt-get update</code>
- <code>$sudo apt install git</code>
- <code>$sudo apt install openjdk-8-jdk-headless</code>
- <code>$git clone -b prevent_server_linux https://github.com/Lanthanum-system-toolbox-v2/Prevent-patch-server prevent_server</code>
- <code>$cd prevent_server</code>
- 配置config （格式参见分支[prevent_server_win](https://github.com/xzr467706992/Lanthanum_system_toolbox_v2/blob/prevent_server_win/README.md))&&当然你可能需要<code>$sudo apt install vim</code>来为你提供一个编辑器（具体自行谷歌vim的用法)
- <code>su</code>
- <code>#./start.sh</code>
- 尝试连接
- 退出ROOT身份(有需要的话)<code>#exit</code>
- 如需查看日志可在任何目录<code>$lalog</code>或<code>#lalog</code>
### 关闭补丁服务
- <code>$ps -ef | grep 'java -jar prevent_server.jar'</code>
- 会看到如以下内容
  ```
    root      9657     1  0 12:56 ?        00:00:00 java -jar prevent_server.jar
    root     11206 10400  0 13:02 pts/2    00:00:00 grep java -jar prevent_server.jr
  ```
- 请将root后面的数字复制，那个就是服务进程的PID(每部机器都会不一样)
- 普通用户输入命令<code>$sudo kill</code>然后将刚刚复制的PID粘贴，如下<code>$sudo kill 9657</code>
- ROOT输入命令<code>#kill</code>然后将刚刚复制的PID粘贴，如下<code>#kill 9657</code>
### 获取最新服务端
- 在服务器文件夹中使用<code>git pull</code>
## Bug
- You tell me (Github issue)
