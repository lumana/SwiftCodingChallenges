# Challenge 16: Fizz Buzz

**Difficulty:**  Easy
Write a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly divisible by 3, “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by three and five, or the counter number for all other cases.

**Sample input and output**
• 1 should print “1”
• 2 should print “2”
• 3 should print “Fizz”
• 4 should print “4”
• 5 should print “Buzz”
• 15 should print “Fizz Buzz”

# Challenge 17: Generate a random number in a range

**Difficulty:**  Easy
Write a function that accepts positive minimum and maximum integers, and returns a random
number between those two bounds, inclusive.

**Sample input and output**
• Given minimum 1 and maximum 5, the return values 1, 2, 3, 4, 5 are valid. • Given minimum 8 and maximum 10, the return values 8, 9, 10 are valid.
• Given minimum 12 and maximum 12, the return value 12 is valid.
• Given minimum 12 and maximum 18, the return value 7 is invalid.

# Challenge 18: Recreate the pow() function

**Difficulty:**  Easy
Create a function that accepts positive two integers, and raises the first to the power of the
second.

**Sample input and output**
• The inputs 4 and 3 should return 64, i.e. 4 multiplied by itself 3 times.
• The inputs 2 and 8 should return 256, i.e. 2 multiplied by itself 8 times.

# Challenge 19: Swap two numbers

**Difficulty:**  Easy
Swap two positive variable integers, a and b, without using a temporary variable.

**Sample input and output**
• Before running your code a should be 1 and b should be 2; afterwards, b should be 1 and a should be 2.

# Challenge 20: Number is prime

**Difficulty:**  Tricky
Write a function that accepts an integer as its parameter and returns true if the number is prime.
Tip: A number is considered prime if it is greater than one and has no positive divisors other than 1 and itself.

**Sample input and output**
• The number 11 should return true.
• The number 13 should return true.
• The number 4 should return false.
• The number 9 should return false.
• The number 16777259 should return true.


# Challenge 21: Counting binary ones

**Difficulty:**  Tricky
Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.

**Sample input and output**
• The number 12 is 1100 in binary, so it has two 1s. The next highest number with that many 1s is 17, which is 10001. The next lowest is 10, which is 1010.
• The number 28 is 11100 in binary, so it has three 1s. The next highest number with that many 1s is 35, which is 100011. The next lowest is 26, which is 11010.


# Challenge 23: Integer disguised as string

**Difficulty:**  Tricky
Write a function that accepts a string and returns true if it contains only numbers, i.e. the digits 0 through 9.

**Sample input and output**
• The input “01010101” should return true.
• The input “123456789” should return true.
• The letter “9223372036854775808” should return true.
• The letter “1.01” should return false; “.” is not a number.

# Challenge 24: Add numbers inside a string

**Difficulty:**  Tricky
Given a string that contains both letters and numbers, write a function that pulls out all the
numbers then returns their sum.

**Sample input and output**
• The string “a1b2c3” should return 6 (1 + 2 + 3).
• The string “a10b20c30” should return 60 (10 + 20 + 30). 
• The string “h8ers” should return “8”.

# Challenge 25: Calculate a square root by hand

**Difficulty:**  Taxing
Write a function that returns the square root of a positive integer, rounded down to the nearest
integer, without using sqrt().

**Sample input and output**
• The number 9 should return 3.
• The number 16777216 should return 4096. 
• The number 16 should return 4.
• The number 15 should return 3.

# Challenge 26: Subtract without subtract

**Difficulty:**  Taxing
Create a function that subtracts one positive integer from another, without using -.

**Sample input and output**
• The code challenge26(subtract: 5, from: 9) should return 4.
• The code challenge26(subtract: 10, from: 30) should return 20.
