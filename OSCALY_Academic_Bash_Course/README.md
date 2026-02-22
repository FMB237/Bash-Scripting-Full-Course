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
By default the bash shebangs is given by **#!/bin/bash** this the traditional bin/bash shebangs line we can also used this our python script by giving the path to the scripts that is **#!/usr/bin/python3**
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
---

# Lesson 4: Playing with Variables
**Let Create a Small Script which will create a folder with a small text file inside and list the contain of our Folder**
- Look at the script with name create.sh which can create a Folder with a file inside
- The scripts with name variable.sh is been used to show how variables are been used and represented in bash
- Note that to used rebuild system variables we store using the $ symbols like *list=$(ls)*
---

# Lesson 5 : Computation Power(Arrays and Arithemetic operations)
1. Let Create a file with name arithmetic.sh in which we will undergoes and used all the mathmatical operations in bash
2. Bash supports multiple opeartion on like C and Python that is addition,substraction,division,modulo,multiplication e.t.c
3. All this operation can be done using the let command  that is **let result=4+5** Then echo the resuly od our calcualtions
4. But today we mostly used the double quotation method for arithmetic opearations. **somme=$((50+40))**
5. Let Create a  new file with name arrays.sh
6. Let Create a new file with name stream.sh which is a program that will permit to interact with one or more bash scripts
7. We also used the rebuild command sleep to make a program sleep for a given time after execution.e.g **sleep 10 & echo "I was sleeping"**
8. We used a simple colonne to make our command run sequentially one after another like **ls;ps;whoami**
9. This simple command are mainly called controllers.
---
# Lesson 6 : Input/Output Mastery(Redirection && syntax)
1. In this lesson we will first create a script call redirection.sh
2. In linux the proecess of redirection is mainly the taking of the input of a scripts and output it in another.
3. let Used the EOF bash command redirection insert informations into a file 
4. Also using the pipe operator which is mainly **|** 

---

# Lesson 7 : Interactive operations 
1. Let move on to positional_arguements so let create a scripts with and name positional_arguement
2. In the positional_arguements script we write the script that can ping to any webiste we want so the target is the varable ${1}
3. Let move on to interactive scripts which permit us to enter inputs and observe outputs.
4. In that file we used the **read -r** to capture our inputs.
5. In bash some scripts may faces errors and this can be dangerous since the can break our system so we prefers using exit_code which permit to the scripts to stop when it encounters an error to protect our system.
6. All this errors have separate errors that can be intertified and reuse for works to avoid problem

---
# Lesson 8 : How computer communicate
To understand bash scripting in a more advance way we need to know principally how the computer components communicate between each others That is we need to know and understand the Databus inside a computer.
The modern computer  hardware includes mainly 3 part consisting of the **Data bus** mainly :
- The CPU: Central proccesssing unit(Control Bus)
- Memory : It main roles is to store the data in to our system.It is also call the **Address bus since informations can move from the Cpu or can also comes from the I/0 but not at the same times**
- I/O(input/output) : These are mainly inputs and outputs which includes all the sets of instructions we alreasy knows **Note:Inputs and Outputs are equal**
-
---
# Lesson 9 : What happen in background
Let look how to computer communicate in the background  so mainly how computer incode and store data.For a single task to be done using our computers we mainly need a billons of connections to happen in background that is mainly done in binary.mainly like ligthing a bulb.In modern computers we have transitor which can only have 2 stats either **ON** or **OFF** that is the reason will in modern computers today we can mainly have mesure the power of the computers from i number of transisitors which consitue a real deal like today we the used of microtechnologies.

**What is a bit ?**
A bit the smallest unit of computer and bit comes from binary digit.Binary digits only includes 0 and 1 :
1. 8bits= 1bytes(Which stores an information that is character)
2. The parther representation of 8bits is ASCII e.g a character A define as 
3. A= 10000010 B=01010010
4. Binary is ideal for electronics but to the follwoing reasons
- Effiency
- Error resistance
- Simple to use since we only have 2 stats

**What is decimal ?**
Decimal numbers on base 10 numbers are all the numbers from 0 to 9  so the number we aminly used everyday.That is human numbers
**We also have Hexadecimal that goes from 0 to F**. All this can be converted to binary if wanted.That is 1000 1001 1010 0110 as a network energineering student i already know all this converion stuffs.

---
# Lesson 10 : Addition in decimal
For us humans this is mainly basic additions but for a machine is the more complicated since only understands binary so if a number is enter as decimal i will be converted in binary before usage by the machine and then recover to decimal for human usages.
Like an interger will  resife 32 bits for it operations while a simple characters will be stored into 8bits

# Lesson 11: Arthemetic operations on unsigned intergers
**Concept values**
So the addition of numbers in globally from binary,decimal to hexadecimal(base16)
With A=10,B=11,C=12...F=15(In decimal) while in binary we have more complex uses like A=1010,B=1011 ....F=1111.**In conclusion we mainly needs to go and check the conversions tables**


# Lesson 12 : Boolean Algebra
what are boolean ?
In the 19's a british mathematicial **(George Boole)**  devlopper a new form of maths for decision making knows as boolean mainly used in programming today booleans are said to be the maths for decision like in python booleans only carrises two values either **True** or **False**
Today in the design of circuits we mainly use them as prefers notation 
**Example a Bulb can only be ON or OFF** so we making talking about logic control we place **True=1** and **False=0**
This is also mainly seen with Logic gates.So the boolean algebra using the logic operators like **AND,OR,NOT** so we can only have a logical decision as result.

Bro go and learn logic gates back.
AND gates for multiplication so if we have 1 and 1 as input the output we be 1 and if not the output will be 0
**AND gates: 1.1=1,1.0=0,0.=1** 
**OR gates :0+0=0,0+1=1,1+0=1,1+1=1**
**NOT gate:NOT(True)=False,NOT(False)=True**

---
# Lesson 13 :Introduction to Electronics
This is most give anyone a basic understanding of how hardware and communicate together using logic gates.So we will define some key terms for our work 
- What is current ?:Current refers to the movement of electrical charges.It is mesure in coulombs.If a flow of Coulumb per second so 1C/s= 1 Ampere
- Voltage also called potential differcents which refers to the differcent in electrical energy per unit charge between 2 points.So 1volt is define as the potential differcent when a current of 1A flows through conductor result to the dispersion of 1 Watt of power.
- Conductors the component that connect all the other together let it be active or passive components
- Note each device are said to have a range of voltage the can suuport with a tolerance of +5% or -5% meaning can keep opeating on the range [4.75v-5.25v] if it basic voltage is 5v.
- 
# Lesson 14: Logic gates and their hardware implentation.
