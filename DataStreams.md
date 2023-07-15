Data Streams in bash consis of three major components.
Two of them are Standard Output and Standard Error.
Lets go with 'Standard Output' First:
In simple terms, If the exit code of any command or script in Bash is 0 then we can say that it is
Standard Output.
Lets say you ran a command to find files in a specific directory by using find command. For example
find /etc -type f
The command will show you the files that have been found by 'find' command. Now there will be files which
can not be accessed without sudo privileges, with the files there will be a error message 'Permission denied'

"/etc/pulse/daemon.conf" : is a standard output of the 'find' command without any error.
"find: '/etc/cups/ssl': Permission denied" : is a standard error of 'find' command which says file cannot
					     be accessed without sudo privileges.

Standard Error:
	The error message or when we get exit code other than 0 is called Standard Error.
	Let's run again 'find' command, when we check the exit code of 'find' command we will get
	1. Because the command was not successfull because of files which can not be accessed without 
	sudo priviliges.

