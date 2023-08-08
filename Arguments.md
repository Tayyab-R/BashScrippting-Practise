# Bash Scripting - Command-Line Arguments
Welcome, beginner students, to our bash scripting class! Today, we will dive into the world of command-line arguments, an essential concept for writing interactive and flexible bash scripts. By the end of this lesson, you will be well-equipped to create more versatile scripts for your GitHub repo named "Bash Scripting."

## Understanding Command-Line Arguments
Imagine you have a bash script that you want to use for different purposes, such as processing different files or performing various tasks. Instead of modifying the script every time, command-line arguments allow you to pass inputs to your script directly when you run it, making your script more dynamic.

## How to Use Command-Line Arguments
In bash scripting, command-line arguments are accessed using special variables: $1, $2, $3, and so on. Each variable corresponds to a different argument you provide when running the script.

## Here's a simple example:


```#!/bin/bash 
echo "Hello, $1!" 
When you run this script like this: ./greet.sh Alice, it will output: Hello, Alice!
```

Here, **$1** represents the first argument you provide after the script's name.

Handling Multiple Arguments
You can also pass multiple arguments to your script. Let's update our greet.sh script to greet both the first and last names.
```#!/bin/bash
echo "Hello, $1 $2!"
Now, when you run ./greet.sh Alice Smith, it will output: Hello, Alice Smith!
```
Here, **$1** represents the first argument (Alice), and **$2** represents the second argument (Smith).

The Special Variable **$0**
The variable **$0** holds the name of the script itself. Let's use it in a new script called greet_script.sh.

```#!/bin/bash

echo "Running script: $0"
echo "Hello, $1!" 
```
**When you run ./greet_script.sh Bob, it will output:**

```Running script: ./greet_script.sh
Hello, Bob!
```
Conclusion
- Congratulations! You've learned the basics of command-line arguments in bash scripting. Now you can make your scripts more flexible and interactive by taking inputs directly from the command line.

- As you progress in your bash scripting journey and develop more complex scripts for our "Bash Scripting" GitHub repo, remember to harness the power of command-line arguments to create versatile and user-friendly tools.

- Keep practicing, and don't hesitate to ask any questions. Happy scripting! 🚀
