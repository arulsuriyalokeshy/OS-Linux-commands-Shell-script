# OS-Linux-commands-Shell-scripting
Operating systems Lab exercise
# Linux commands-Shell scripting
Linux commands-Shell scripting

# AIM:
To practice Linux Commands and Shell Scripting

# DESIGN STEPS:

### Step 1:

Navigate to any Linux environment installed on the system or installed inside a virtual environment like virtual box/vmware or online linux JSLinux (https://bellard.org/jslinux/vm.html?url=alpine-x86.cfg&mem=192) or docker.

### Step 2:

Execute the following commands

### Step 3:

Testing the commands for the desired output. 

# COMMANDS:
### Create the following files file1, file2 as follows:
cat > file1
```
chanchal singhvi
c.k. shukla
s.n. dasgupta
sumit chakrobarty
^d
```
cat > file2
```
anil aggarwal
barun sengupta
c.k. shukla
lalit chowdury
s.n. dasgupta
^d
```
## OUTPUT

![alt text](1.png)
### Display the content of the files

cat < file1 
cat < file2

## OUTPUT
![alt text](2.png)

# Comparing Files
cmp file1 file2
## OUTPUT

![alt text](3.png)

diff file1 file2
## OUTPUT
![alt text](5.png)

comm file1 file2
 ## OUTPUT
 ![alt text](4.png)

 # Filters

### Create the following files file11, file22 as follows:

cat > file11
```
Hello world
This is my world
^d
```
cat > file22
```
1001 | Ram | 10000 | HR
1002 | tom |  5000 | Admin
1003 | Joe |  7000 | Developer
^d
```


cut -c1-3 file11
## OUTPUT
![alt text](6.png)

cut -d "|" -f 1 file22
## OUTPUT
![alt text](7.png)

cut -d "|" -f 2 file22
## OUTPUT
![alt text](8.png)

cat < newfile 
```
Hello world
hello world
^d
```
cat > newfile 
Hello world
hello world
 
grep Hello newfile 
## OUTPUT
![alt text](9.png)

cat newfile | grep -i -c "hello"
cat -w -n world newfile

## OUTPUT
![alt text](10.png)

cat < newfile 
```
Hello world
hello world
Linux is world number 1
Unix is predecessor
Linux is best in this World
^d
```

cat > newfile
```
Hello world
hello world
Linux is world number 1
Unix is predecessor
Linux is best in this World
^d
 ```
 ![alt text](11.png)


 egrep -w 'Hello|hello' newfile1

## OUTPUT
![alt text](12.png)



egrep -w '(H|h)ello' newfile1
egrep -w '(H|h)ell[a-z]' newfile1
egrep '(^hello)' newfile1

## OUTPUT

![alt text](13.png)



egrep '(World$)' newfile1
egrep '((W|w)orld$)' newfile1
egrep '[1-9]' newfile1
egrep 'Linux.*world' newfile1
egrep 'Linux.*World' newfile1
## OUTPUT
![alt text](14.png)


cat > file23
```
1001 | Ram | 10000 | HR
1001 | Ram | 10000 | HR
1002 | tom |  5000 | Admin
1003 | Joe |  7000 | Developer
1005 | Sam |  5000 | HR
1004 | Sit |  7000 | Dev
1003 | Joe |  7000 | Developer
1001 | Ram | 10000 | HR
^d
```

sed -n -e '3p' file23
sed -n -e '$p' file23
sed -e 's/Ram/Sita/' file23


## OUTPUT
![alt text](15.png)

sed '/tom/s/5000/5000' file23
sed -n -e '1,5p' file23
sed -n -e '2,/joe/p' file23
sed -n -e '/tom/,/joe/p' file23


## OUTPUT 
![alt text](16.png)

seq 10

## OUTPUT
![alt text](17.png)

seq 10 | sed -n '4,6p'
seq 10 | sed -n '2,~4p' 
seq 3 | sed '2a hello'
seq 2 | sed '2i hello'

## OUTPUT
![alt text](18.png)

seq 10 | sed '2,9c hello'
sed -n '2,4{s/^/$/;p}' file23
sed -n '2,4{s/$/*/;p}' file23
## OUTPUT

![alt text](19.png)

# Sorting File content
cat > file21
```
1001 | Ram | 10000 | HR
1002 | tom |  5000 | Admin
1003 | Joe |  7000 | Developer
1005 | Sam |  5000 | HR
1004 | Sit |  7000 | Dev
``` 
sort file21

## OUTPUT
![alt text](20.png)

cat > file22
```
1001 | Ram | 10000 | HR
1001 | Ram | 10000 | HR
1002 | tom |  5000 | Admin
1003 | Joe |  7000 | Developer
1005 | Sam |  5000 | HR
1004 | Sit |  7000 | Dev
``` 
uniq file22

## OUTPUT
![alt text](21.png)


# Using tr command

cat newfile | tr [:lower:] [:upper:]
cat > urllist.txt
```
www. yahoo. com
www. google. com
www. mrcet.... com
 ```
cat urllist.txt | tr -d ' '
cat urllist.txt | tr -d ' ' | tr -s '.'

## OUTPUT
![alt text](22.png)

# Backup commands
tar -cvf backup.tar *

## OUTPUT
![alt text](23.png)


tar -tvf backup.tar

## OUTPUT
![alt text](24.png)


gzip backup.tar
ls .gz
gunzip backup.tar.gz

## OUTPUT
![alt text](25.png)


# Shell Script
```
echo '#!/bin/sh' > my-script.sh
echo 'echo Hello World‘; exit 0 >> my-script.sh
```
chmod 755 my-script.sh
./my-script.sh

## OUTPUT
![alt text](26.png)

cat << stop > herecheck.txt
```
hello in this world
i cant stop
for this non stop movement
stop
```
cat herecheck.txt

## OUTPUT
![alt text](27.png)


cat > scrip.sh 
```bash
\#!/bin/sh
echo “File name is $0 ”
echo "File name is " `basename $0`
echo “First arg. is ” $1
echo “Second arg. is ” $2
echo “Third arg. is ” $3
echo “Fourth arg. is ” $4
echo 'The $@ is ' $@
echo 'The $\# is ' $1#
echo 'The $$ is ' $$
ps
^d
 ```
 cat sript.sh
 chmod 777 sript.sh
 ./script.sh 1 2 3

## OUTPUT
![alt text](28.png)

# mis-using string comparisons

cat > stringcmp.sh 
```bash
\#!/bin/bash
val1=baseball
val2=hockey
if [ $val1 \> $val2 ]
then
echo "$val1 is greater than $val2"
else
echo "$val1 is less than $val2"
fi
^d
```
cat stringcmp.sh 
```bash
\#!/bin/bash
val1=baseball
val2=hockey
if [ $val1 \> $val2 ]
then
echo "$val1 is greater than $val2"
else
echo "$val1 is less than $val2"
fi
```

$ chmod 777 stringcmp.sh
$ ./stringcmp.sh

## OUTPUT

![alt text](29.png)



# check file ownership
cat > psswdperm.sh 
```bash
\#!/bin/bash
if [ -O /etc/passwd ]
then
echo “You are the owner of the /etc/passwd file”
else
echo “Sorry, you are not the owner of the /etc/passwd file”
fi
^d
```

cat psswdperm.sh 
```bash
/#!/bin/bash
if [ -O /etc/passwd ]
then
echo “You are the owner of the /etc/passwd file”
else
echo “Sorry, you are not the owner of the /etc/passwd file”
fi
 
 ```
$ chmod 777 psswperm.sh
$ ./psswdperm.sh
## OUTPUT
![alt text](30.png)

# check if with file location
cat>ifnested.sh 
```bash
\#!/bin/bash
if [ -e $HOME ]
then
echo “$HOME The object exists, is it a file?”
if [ -f $HOME ]
then
echo “Yes,$HOME it is a file!”
else
echo “No,$HOME it is not a file!”
if [ -f $HOME/.bash_history ]
then
echo “But $HOME/.bash_history is a file!”
fi
fi
else
echo “Sorry, the object does not exist”
fi
^d
```
cat ifnested.sh 
```
\#!/bin/bash
if [ -e $HOME ]
then
echo “$HOME The object exists, is it a file?”
if [ -f $HOME ]
then
echo “Yes,$HOME it is a file!”
else
echo “No,$HOME it is not a file!”
if [ -f $HOME/.bash_history ]
then
echo “But $HOME/.bash_history is a file!”
fi
fi
else
echo “Sorry, the object does not exist”
fi
```
$ chmod 777 ifnested.sh
$ ./ifnested.sh 

## OUTPUT
![alt text](31.png)


# using numeric test comparisons
cat > iftest.sh 
```bash
\#!/bin/bash
val1=10
val2=11
if [ $val1 -gt 5 ]
then
echo “The test value $val1 is greater than 5”
fi
if [ $val1 -eq $val2 ]
then
echo “The values are equal”
else
echo “The values are different”
fi
^d
```


cat iftest.sh 
```bash
\#!/bin/bash
val1=10
val2=11
if [ $val1 -gt 5 ]
then
echo “The test value $val1 is greater than 5”
fi
if [ $val1 -eq $val2 ]
then
echo “The values are equal”
else
echo “The values are different”
fi
```

$ chmod 755 iftest.sh
 
$ ./iftest.sh

## OUTPUT
![alt text](32.png)

# looking for a possible value using elif
cat elifcheck.sh 
```bash
\#!/bin/bash
if [ $USER = Ram ]
then
echo "Welcome $USER"
echo "Please enjoy your visit"
elif [ $USER = Rahim ]
then
echo "Welcome $USER"
echo "Please enjoy your visit"
elif [ $USER = Robert ]
then
echo "Special testing account"
elif [ $USER = gganesh ]
then
echo "$USER, Do not forget to logout when you're done"
else
echo "Sorry, you are not allowed here"
fi
```

$ chmod 755 elifcheck.sh
 
$ ./elifcheck.sh 

## OUTPUT
![alt text](33.png)


# testing compound comparisons
cat> ifcompound.sh 
```bash
\#!/bin/bash
if [ -d $HOME ] && [ -w $HOME ]
then
echo "The file exists and you can write to it"
else
echo "I cannot write to the file"
fi
```
$ chmod 755 ifcompound.sh
$ ./ifcompound.sh

## OUTPUT
![alt text](34.png)


# using the case command
cat >casecheck.sh 
```bash
case $USER in
Ram | Robert)
echo "Welcome, $USER"
echo "Please enjoy your visit";;
Rahim)
echo "Special testing account";;
gganesh)
echo "$USER, Do not forget to log off when you're done";;
*)
echo "Sorry, you are not allowed here";;
esac
```
$ chmod 777 casecheck.sh 
 
$ ./casecheck.sh 



## OUTPUT
![alt text](35.png)

cat > whiletest
```bash
#!/bin/bash
#while command test
var1=10
while [ $var1 -gt 0 ]
do
echo $var1
var1=$[ $var1 - 1 ]
done
```
$ chmod 777 whiletest.sh
 
$ ./whiletest.sh

## OUTPUT
![alt text](36.png)

cat > untitfunc.sh 
```bash
\#using the until command
var1=100
until [ $var1 -eq 0 ]
do
echo $var1
var1=$[ $var1 - 25 ]
done
``` 
$ chmod 755 untilfunc.sh

$ ./untilfunc.sh


## OUTPUT
![alt text](37.png)


cat > forign.sh 

```bash
\#!/bin/bash
\#basic for command
for test in Alabama Alaska Arizona Arkansas California Colorado
do
echo The next state is $test
done
```
 
$ chmod 777 forign.sh
$ ./forign.sh

## OUTPUT
![alt text](38.png)

cat > forign2.sh
```bash
\#!/bin/bash
\# another example of how not to use the for command
for test in I don't know if this'll work
do
echo “word:$test”
done
```
$ chmod 755 forign2.sh
 
$ ./forign2.sh 

## OUTPUT
![alt text](39.png)

cat > forign3.sh
```bash
\#!/bin/bash
\# another example of how not to use the for command
for test in I don\'t know if "this'll" work
do
echo "word:$test"
done
```
$ chmod 777 forign3.sh
$ ./forign3.sh


## OUTPUT
![alt text](40.png)

cat > file.sh 
```bash
#!/bin/bash
# reading values from a file
file="cities"
for state in `cat $file`
do
echo "Visit beautiful $file“
done
```
$ chmod 777 file.sh
$ echo -e "New York\nLos Angeles\nChicago\nHouston\nMiami" > cities

 $ ./file.sh


## OUTPUT
![alt text](41.png)


cat > forctype.sh 
```bash
#!/bin/bash
# testing the C-style for loop
for (( i=1; i <= 5; i++ ))
do
echo "The value of i is $i"
done
```
$ chmod 777 forctype.sh
$ ./forctype.sh

## OUTPUT
![alt text](42.png)

cat > forctype1.sh 
```bash
#!/bin/bash
# multiple variables
for (( a=1, b=5; a <= 5; a++, b-- ))
do
echo "$a - $b"
done
```
$ chmod 755 forctype.sh
$ ./forctype1.sh 

## OUTPUT
![alt text](43.png)


cat > nestedfor.sh 
```bash
#!/bin/bash
# nesting for loops
for (( a = 1; a <= 3; a++ ))
do
echo "Starting loop $a:"
for (( b = 1; b <= 3; b++ ))
do
echo " Inside loop: $b"
done
done
```
$ chmod 755 nestedfor.sh
 
$ ./nestedfor.sh

## OUTPUT 
![alt text](44.png)


cat > break.sh 
```bash
#!/bin/bash
# breaking out of a for loop
for var1 in 1 2 3 4 5
do
if [ $var1 -eq 3 ]
then
break
fi
echo "Iteration number: $var1"
done
echo "The for loop is completed“
```
 $ chmod 777 break.sh
 $ ./break.sh
## OUTPUT
![alt text](45.png)


cat >forbreak.sh 
```bash
#!/bin/bash
# breaking out of a for loop
for var1 in 1 2 3 4 5
do
if [ $var1 -eq 3 ]
then
continue
fi
echo "Iteration number: $var1"
done
echo "The for loop is completed“
```
$ chmod 777 forbreak.sh
$ ./forbreak.sh

## OUTPUT
![alt text](46.png)

 cat >extast.sh
```bash
#!/bin/bash
# testing the read command
read -p "Enter your name: " name
echo "Hello $name, welcome to my program. “
``` 
$ chmod 755 extest.sh 
$ ./extest.sh

## OUTPUT
![alt text](47.png)

cat > nc.awk
```bash
BEGIN{}
{
print len=length($0),"\t",$0 
wordcount+=NF
chrcnt+=len
}
END {
print "total characters",chrcnt 
print "Number of Lines are",NR
print "No of Words count:",wordcount
}

```
cat>data.dat
```bash
bcdfghj
abcdfghj
bcdfghj
ebcdfghj
bcdfghj
ibcdfghj
bcdfghj
obcdfghj
bcdfghj
ubcdfghj
```
 $ awk -f nc.awk data.dat

## OUTPUT
![alt text](48.png)

cat > palindrome.sh
```bash
#num=545
echo "Enter the number"
read num
s=0
rev=""
temp=$num
while [ $num -gt 0 ]
do
	# Get Remainder
	s=$(( $num % 10 ))
	# Get next digit
	num=$(( $num / 10 ))
	# Store previous number and
	# current digit in reverse
	rev=$( echo ${rev}${s} )
done
if [ $temp -eq $rev ];
then
	echo "Number is palindrome"
else
	echo "Number is NOT palindrome"
fi
```
## OUTPUT
![alt text](49.png)


# RESULT:
The commands are executed successfully.
