# Hey is will be my second bash scripting course  this course is based on the OSCALY Academy course on Udemy 
**This course will be more valuable than the other since i have more knowlegde in bash scripting**
---
This course will provide more know knowledge about the used of hardware and how hardware communicate with software for developpement
So let automate using bash
**Course Outline**
1. Introduction to bash -> Bourne Again Shell -> Brain Fox in 1989 
2. The Essential Features of bash
3. Labs  Setup and Security 

So Bash means Bourne Again shell

When a command is been type into the command the bash in the interprete between us and the our machine
- Bash(Interpreter)
- Linux Executables(The Workhorses) nmap,ls,grep
---

**Bash inlcude many Features**
1. Command Executions : Which permit us to run script
2. Command Completion : Help us in task compleations
3. Command histoty : It also handle that 
4. Shell Function and Aliases
5. Environment Vars
6. Help (man Command) the man command is a command been used to ask for help in linux it is a default build command so no packets need to bne installed
These are mainly the essential features in bash 
**Bash Usage**
1. Automated Network Scanning  So doing Network automation using -> Massscan -> nmap can be done using bash scripts
2. Data Cleanning and Duplication
3. Scoping Automations ROE
4. Report  Filtering 
5. Iteration for and while

**Let move on to our Lab requirements**
- A fucntion linux/mac environment personnally i used Linux as my base OS but MacOs can also be used
- We can also used our environment as a Linux Vm
- When Windows11 supports bash in some versions
- Note When Using the Vm Always look at the resources you have on you pc.

*When Using Vm use Virtualbox,VMware or virt-manager*

---
# Lesson 2: Modern Terminals

1. **Shell Selection :** Note that Bash is not the only shell we mainly have 2 main shells today which are **Bash** and **Zsh**.Bash is the default and more secure shell out the since it is present on all linux system by default while the Zsh is the shell for MacOs but even in MacOs we can still found the bash shell install. 
2. **Environment Isolation :** Bash can also help us in the system isolations

Use the command version to check the version of our app install on linux

**To check if a shell is been install on our computer use the command: ech0 $0** in our terminal

# Lesson 3 :Bash Shebang and executions
**The Bash Shebangs**
By default the bash shebangs is given by *#!/bin/bash* this the traditional bin/bash shebangs line we can also used this our python script by giving the path to the scripts that is *#!/usr/bin/python3*
**Note to found my scripts or app location on linux we use the command " whereis <appname> "**
*Example whreeis bash or whereis python3* So we can always select our interpreter.

-x -> Verbose
To write comments in bash we used the "#" The same as simple python comments
**To make a script executable we using the **change file mode bits(chmod)**  So we have 
*chmod +x filename* where the file +x means execute
When Writing bash scripts we can give the authour of the scripts and the verions of it 

---
**Let Write our Fisrt Bash Script**
You will find it in the file name hello.sh the script can also be execute using the command bash "scriptname".For more bash function use the command 
*bash --help or man bash to have more informations about the used of the bash command*
*we use the commands set -x and set -x respectively to turn on and off debugging in our scripts*
