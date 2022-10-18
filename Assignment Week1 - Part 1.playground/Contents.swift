import UIKit

//Pedro Javier Munoz Garcia's Solutions

//Exercise 1
var temp: Float = 92.89874

temp = 88.67343

//Exercise 2
let secTime: Int = 35

//secTime = 20

/* It doesn't work beacause I had declared "secTime" variable as constant with the "let" keyword. Once you declared a constant and assign a value you can't change it */

//Exercise 3
var myNumber : Int = 5

var yourNumber = 3

//Exercise 4
let wheelsCar: Int

wheelsCar = 4

/* Doing like this works because I declared the name and the type of the variable but I didn't assign a value in declaration statement of the variable*/

//Exercise 5
let π : Float = 3.14159

//Exercise 6
var 👽 = "Alien Predator, Halloween is comming"

//Exercise 7
print(👽)

//Execise 8
/* the maximum value that can be stored in an Int16 is 32767, because its range is between -32767 and 32767 */

var valMax = (UInt16.max)/2

print(valMax)

/* The constant "pi" is Double type because the number 3 has not a definite type of value, so it is inferred for the presence of a floating-point literal as part of the addition */

//Execise 9
/* If i try to run that code pop up an alert, (the code crunch) because unsigned integer type "UInt" just can storage positive values. If we use "Int" instead of "UInt" the code run perfectly*/

//Exercise 10
/*If I try to run that code, the compiler shows me an error because I can't assign value of type "Int" to type "Int16", I mean the number won’t fit into size of variable type "UInt". Likewise, the maximum value that an Int16 can storage is 32767 */

//Exercise 11
/* The code doesn't work because we can't assign one type of data to other variable with different type of data. To make it works we need to do what it's shows out below: */

let pi = 3.141592654          //type -> Double
let approximatePI = Int(pi)    //type -> Int
print(approximatePI)            //3

/*As you can see above I put the variable into the parentheses of type of data I want to get. The variable "pi" is pass into the initializer of the "Int" type as its initial value.*/

//Exercise 12
//In Single line comments, two forward-slashes "//" are at the begining of the sentence.

/*Multiline comments include both an asterik and a forward slash at the begining and at the end. This type of comment allows write more than 1 senteces a long as you don't forget close the comments with an asterik and a forward slash, just like this */

//Exercise 13

/* Multiline comments can be nested inside of a previous multiline comments.You can nested if you do this:
    /* this is the nested multiline comments*/
 Now I can close the first multiline open */

//Exercise 14
// We can declare two statements in just one line like this:

let firstVar = "One"; let secondVar = "Line"
