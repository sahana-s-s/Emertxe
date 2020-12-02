<<comments
Date:20-10-2020
Name:Sahana S S
Description:A script to use pipes or redirection to create an infinite feedback loop.
Input:Hai Hello
Output:
Hai Hello
Hai Hello
Hai Hello
....
.
.
Hai Hello
comments
#!/bin/bash 
echo Before loop file contents 
echo "Hai Hello" > file1 
echo After loop file contents
tail -f file1 >> file1 | tail -f file #redirection  of file1 to run infinite times.
