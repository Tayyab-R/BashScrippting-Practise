Linux uses FHS File System which means File Hirarchy System. When you write scripts that are really
usefull, you store them to working directory. The problem in working directory is that we have to 
go that directory and run the script which is, obivsouly, time consuming.
This is not the only reason to store usefull written bash scripts to a proper place on Linux.
The proper place for scripts to store on Linux is
/usr/local/bin/
where you can access them anywhere anytime without the need of to go the directory and run the script.
When storing scripts on /usr/local/bin/, we should also check the permission of scripts.
This depends on the scenario. For example, if your demand is the script should be written or read by
adminstrator priviliges, You can change the permissions of script by using
'sudo chown root:root filename' commmand.
With this command the script can not be executed or written or read by simple user or without 
adminstrator privileges.

Let's take a example
You write a Bash script that updates the linux based on the distro is running.
The optimum solution would be to store the script to move to the 
/usr/local/bin/ directory.

