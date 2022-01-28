## The challange
Given a list of integers, calculate the difference between each pair of adjacent integers, forming a sequence. For example, an input of {5, 6, 3, 9, -1} will be calculated as {6-5, 3-6, 9-3, -1-9} = {1, -3, 6, -10}. Formally, given a1, a2, ... , ak, we can calculate its sequence as b1, b2, ... , bk-1, where bi = ai+1 - ai.
Now, a sequence of order N is a sequence where we iteratively apply the above process N times. For example, if A = {5, 6, 3, 9, -1}, a sequence of order 2 will be: {5, 6, 3, 9, -1} -> {1, -3, 6, -10} -> {-3-1, 6-(-3), -10-6} = {-4, 9, -16}.
You may assume the following:
-	The input will contain between 1 to 20 integers (inclusive)
-	Each integer will be between -200 and 200, inclusive.
-	n will be between 0 and K-1, inclusive, where K is the number of elements in the input
Using your favourite programming language, implement a working program that
-	Reads as input a single line from stdin, containing the list of integers separated by space, then a comma, and the order n.
For example, the line for the above list and order 2 would be:
5 6 3 9 -1,2
-	Calculates the sequence of order n for the given input; and
-	Prints the result to stdout, as a sequence of integers separated by spaces
