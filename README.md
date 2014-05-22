Knock Subdomain Scan
===================

Knock - баш-скрипт для поиска поддоменов к указанному домену с помощью словаря.

**Использование**

<code>$ ./knock.sh доменное.имя файл.словаря</code>

**Пример**

<code>$ ./knock.sh example.com wordlist.txt</code>

<pre>www.example.com - OK</pre>

**Другое**

Идеей для этого скрипта стал другой инструмент, написанный на python - <a href="https://github.com/guelfoweb/knock">knock</a>.
Но этот скрипт не требует установки python и работает быстрее.

**Тесты**

<code>$time python knock.py example.com</pre>

<pre>Getting NS records for example.com

Ip Address      Server Name
----------      -----------
199.43.132.53   a.iana-servers.net
199.43.133.53   b.iana-servers.net

Getting subdomain for example.com

Ip Address      Domain Name
----------      -----------
93.184.216.119  www.example.com

Ip Addr Summary
---------------
93.184.216.119

Found 1 subdomain(s) in 1 host(s).

real    3m48.007s
user    0m0.244s
sys     0m0.408s</pre>

<code>$ time bash knock.sh example.com wordlist.txt</code>

<pre>www.example.com - OK

real    1m21.625s
user    0m8.477s
sys     0m6.220s</pre>

======================

Knock is a bash script to search for subdomains on a target domain through wordlist dictionary.

**Usage**

<code>$ ./knock.sh domain.name wordlist.file</code>

**Example**

<code>$ ./knock.sh example.com wordlist.txt</code>
<pre>www.example.com - OK</pre>

**Other**

The idea for this script was the same tool, written in python - <a href="https://github.com/guelfoweb/knock">knock</a>.
But this script does not require install python and works quicker.

**Tests**

<code>$time python knock.py example.com</pre>

<pre>Getting NS records for example.com

Ip Address	Server Name
----------	-----------
199.43.132.53	a.iana-servers.net
199.43.133.53	b.iana-servers.net

Getting subdomain for example.com

Ip Address	Domain Name
----------	-----------
93.184.216.119	www.example.com

Ip Addr Summary
---------------
93.184.216.119

Found 1 subdomain(s) in 1 host(s).

real	3m48.007s
user	0m0.244s
sys	0m0.408s</pre>

<code>$ time bash knock.sh example.com wordlist.txt</code>

<pre>www.example.com - OK

real	1m21.625s
user	0m8.477s
sys	0m6.220s</pre>
