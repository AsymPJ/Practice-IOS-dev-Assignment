import UIKit

//Solutions of assigments Week 3 Pedro Javier Munoz

//Exercise 1

func addition(_ number1: Int,_ number2: Int) -> Int{
    return number1 + number2
}

//Exercise 2

let n1: Int = 1
let n2: Float = 2.0
let n3: Double = 3.34

/*var result = n1 + n2 + n3

 This line causes an Error because we can't apply a binary operator "+" to operands of diferrent type. I mean, we can't do an mathematical operations of differents type de values.*/

// Instead, we can implement the below code

var result = n1 + Int(n2) + Int(n3)
print(result)

//or

var result1 = Float(n1) + n2 + Float(n3)
print (result1)

//or

var result2 = Double(n1) + Double(n2) + n3
print(result2)

/*Exercise 3
The keyword init() allow us define the initializer of a determined class. This methods also allows to all instances, objects or references of a specific class are created and have initial properties to set up their initial state. Their primary role is to ensure that new instances of a type are correctly initialized before they're used for the first time.*/

/*Exercise 4 & Exercise 16
Protocols defines a blueprint of methods, properties and other requirements that suit a particular task or piece of funcionality.To provided an implementation of those requirements, the protocols can be adopted by a class, structure or enumeration. The protocols can be extended to implement a particular requirement or additional functionality defined in the blueprint.*/

protocol worldTour {
    var countries : Int { get set }
    var ticketBill : Double { get }
}

class tripAroundTheWorld: worldTour {
    var countries: Int
    var ticketBill: Double
    init(_ countries: Int,_ ticketBill: Double) {
        self.countries = countries
        self.ticketBill = ticketBill
        print("We are going to travel over \(self.countries) countries and we will need \(self.ticketBill) tickets")
    }
}

var firstTrip = tripAroundTheWorld(3, 7)

print(firstTrip)

/*Exercise 5
 Double Question Mark Operator (??) also called nil-coalescing operator is a shortcut of the below operation:
     a ?? b is eqaual to write: a != nil ? a! : b
It is a way to give a default value when an optional is nil. In the above example the expresion "a" is always of an optional type and the expresion "b" must match the type that is storred inside "a". The Double Question Mark provides a more elegant way to encapsulate this conditional checking and unwrapping in a concise and readable form.*/

/*Exercise 6
 The guard statement is used to transfer program control out of a scope if one or more condition aren't met. Guard works like a reverse if..else, so It works like guard based on [condition] if it's true then move on and continue the loop, else do something to catch posible error. What it means is that it is essentially a redirection or early exit of a statement or function to prevent crashing and incorrect data. The value of any condition in a guard statement must be of type "Bool" or a type bridge to "Bool". The condition can also be an optional binding declaration. */

/* Exercise 7
 The three primary collection types in Swift are:
 1- Arrays
 2- Sets
 3- Dictionaries
 
 Swift's arrays, set and ditionary types are implemented as generic collections. Furthermore they are always clear about the types of values and keys that they can store.*/

/* Exercise 8
 The differences between Structures ansd Classes lies in the additional capabilities that classes have over Structures, for example:
  1- Inheritance, one class can inherit the characteristics of another.
  2- Type casting enables you to check and interpret the type of a class instance at runtime.
  3- Deinitializers, enable an instance of a class to free up any resources it has assigned.
  4- Reference counting allows more than one reference to a class instance
 */

/* Exercise 9
 Optional Chaining is a process of evalute by querying and calling properties, methods and subscripts on an optional, if its value is nil or not. If the optional contains a value the property, method or subscript call succeeds; if the optional is nil, the property, method, or subcript call return nil. Multiple queries can be chained together, but the entire chain fails if any link return nil. Optional chaining provides an alternative way to access the value of a determined property, method or subscript. We can use a question mark in place of the exclamation point to use optional chaining*/

/* Exercise 10
 Optional binding can be used to find out whether an optional contains a value, and if so, to use that value in a temporary constant or variable. Optional binding can be with "if" and "while" statements to check for a value inside an optional. Constants and variables created with optional binding in an "if" statement are available only within the body of the "if" statement*/

/* Exercise 11
 In-out parameter allows modify the value of a function parameter and keep the changes after the function call has ended. I mean, it's a parameter that can be changed inside the function where it's passed into. We can write an in-out parameter by placing the "inout" keyword  just before parameter's type. We can only pass a variable as the argument for an in-out parameter. We can't pass a constant or a literal value as the argument. Likewise, we must place an ampersand (&) directly before a variable's name when you pass it as an argument to an in*-out parameter*/

func evalueInOut (_ val1: inout Int,_ val2: inout Int){
    val1 = val1 + 20
    val2 = val2 + 20
}

var exmpl1 = 15
var expml2 = 10

evalueInOut(&exmpl1, &expml2)

print("The values of the first value plus 20 is \(exmpl1) and the value of second one plus 20 is \(expml2)")

/* Exercise 12
 Yes It's possible, Please find below an example*/

func twoNumber (_ nm1: Int = 2,_ nm2: Int = 9 ){
    print ("This function has two default values, the first one is \(nm1) and the second and last one is \(nm2)")
}

twoNumber()                                               //We call the function without parameters, so the function code use the default parameters

/* Exercise 13
  A forced Unwrapping is when we can access its underlying value by adding an exclamation point (!) to the end of the optional's name. Before that, we can use an if statement to find out whether an optional contains a value by comparing the optional against nil. We must used forced unwrapping when we are sure that the optional does contain a value.*/
//Example

var assistance: Int?

if assistance != nil {
    print("We have an assistance of \(assistance!) students today")
}
else{
    print("Any student has arrived yet")
}

/*Exercise 14
 The mutating keyword allows modify the properties of a structure or enumeration within a particular method, I mean a function marked as mutating can change any property within its enclosing value. Once you placed the "mutating" keyboard before the "func" keyboard then the method can change its propertires from within the method, and any change that it makes are written back to the original structure when the methods ends.*/

struct swapNumber {
    var numberX: Int ; var numberY: Int ; var z: Int
    mutating func swapnm ( numberX thisx: Int, numberY thisy: Int){
        z = thisx
        numberX = thisy
        numberY = z
    }
}

var numberss = swapNumber(numberX: 0, numberY: 0, z: 0)
numberss.swapnm(numberX: 99, numberY: 15)
print(numberss.numberX)
print(numberss.numberY)

/*Exercise 15
 Deinitializer is called immediately before a class instance is deallocated. I mean, code gets run when an instance of a class is detroyed. We define a deinitializers with the "deinit" keyboard. Class definitions can have at most one deinitializer per class.The deinitializer doesn't take any parameters and is written without parentheses. Deinitializers are called automatically, just before instance deallocation takes place. We aren't allowed to call a deinitialier ourself. The below code shows how to create a deinitializer */

class howToCreateDeinit{
    deinit{
        //code to perform once deinitializers is called
    }
}

/*Exercise 17
 The main difference between protocols and classes lies in the ability of protocols of multiple inheritance unlike classes we can just inherit from one class. Likewise, classes allow to define and write the implementation of its methods and properties within the class itself. I mean, you can define a method or create a property in a class and give it value just after its declaration. On the other hand in protocols we just can define the properties and methods inside but we can't write its performance, if we want write its implementation we must do it inside a class that inherit this particular protocol or through "extension" keyword that also allows add extra funcionality too.  */

// Exercise 18

struct Apple{
    
}

func pick(apple: Apple?){
    guard let apple = apple else{
        print("No apple found!")
        return                                              //we always must use a "return", "break", "continue" or "throw" to exit from the guard scope
    }
    print(apple)
}

var thisApple: Apple?
pick(apple: thisApple)

// Exercise 19
//We can inherit multiple protocols in a same class with the below code:

protocol A1{
    
}
protocol A2{
    
}
protocol B1{
    
}

class inheritProtocol: A1, A2, B1 {
    
}

//Can we do this too

protocol AB: A1, A2, B1{
    
}

class otherExmpl: AB{
    
}

// Exercise 20
/* We can append two arrays together, using this below code: */

var first = ["John","Paul"]
var second = ["George", "Ringo"]

var resultExample = first + second


print(resultExample)

