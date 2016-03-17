# rcmd
Runs pure bash onliners on remote hosts in parallel with pipe/redirections support

#### List format sample
```ShellSession
kyxap@wbench:~$ aws-list
i-102efea9  core  172.16.16.182  52.3.244.141    m4.large  running  Prod Core - shift-srv1
i-ea554113  devs  172.17.17.214  None            t2.small  stopped  Beta Core - shift-srv1
i-2af1ced3  core  172.16.16.177  52.91.123.140   m4.large  running  Prod Core - order-srv2
i-77801b8e  core  172.16.16.103  52.91.122.117   m4.large  running  Prod Core - shift-srv2
i-f568d20c  team  172.17.17.220  54.152.90.89    m4.large  running  Alpha Core - order-srv1
i-69598880  core  172.16.16.227  52.201.211.180  m4.large  running  Prod Core - order-srv1
i-e0b0f309  devs  172.17.17.34   None            t2.small  stopped  Beta Core - order-srv1
i-445f75ad  team  172.17.17.22   54.172.54.156   m4.large  running  Alpha Core - shift-srv2
i-a55ac05c  team  172.17.17.11   52.87.223.208   m4.large  running  Alpha Core - shift-srv1
i-934c766a  team  172.17.17.15   54.152.91.22    m4.large  running  Alpha Core - order-srv2
```
#### Run pure bash script
```ShellSession
kyxap@wbench:~$ rcmd 'order|shift' /tmp/request.log 'dir=/tmp; [[ -d $dir ]] && { echo "$(hostname);$dir exist";}'
order-srv1;/tmp exist
shift-srv2;/tmp exist
shift-srv1;/tmp exist
order-srv2;/tmp exist
kyxap@wbench:~$ 
```
