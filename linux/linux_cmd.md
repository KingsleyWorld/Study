

1. 清除linux缓存
   To use /proc/sys/vm/drop_caches, just echo a number to it.
 [1] To free pagecache:
    $ echo 1 > /proc/sys/vm/drop_caches
 [2] To free dentries and inodes:
    $ echo 2 > /proc/sys/vm/drop_caches
 [3] To free pagecache, dentries and inodes:
    $ echo 3 > /proc/sys/vm/drop_caches

2. find | xargs
 [1] 替换指定路径下文件内的指定字符串
    $ find ./ -name entries | xargs perl -pi -e 's|OldString|NewString|g'

3. nat
    $ echo 1 > /proc/sys/net/ipv4/ip_forward
    $ iptables -t nat -A POSTROUTING -s 172.16.93.0/24  -j SNAT --to-source :192.168.75.75
    $ route add -net 192.168.75.0/24 gw 10.10.75.30

4. cpulimit
	限制进程名,比如将httpd这个进程名的CPU限制在40%
	$ cpulimit --exe httpd --limit 40
	$ cpulimit --exe /usr/local/bin/httpd --limit 40

	将pid为2960的进程的CPU限制在55%
	$ cpulimit --pid 2960 --limit 55

  自动限制当前进程使用CPU超过20%的进程,将他限制为10%
  $ cpulimit --pid `ps aux|awk '{if($3 > 20) print $2}'` --limit 10
