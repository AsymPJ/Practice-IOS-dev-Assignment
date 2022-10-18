import UIKit

//Exercise 15
var player = ("Patrick Kane", 88)

//Exercise 16
let Name = player.0

print(Name)

let Number = player.1

print(Number)

//Exercise 17
let optValue: String? = "This is a constant with an optional type"

//print(optValue)
/* YEs, it can. If you see in the above example I assign an optional value to "optValue" and when I compiled the code runs perfectly */

//Exercise 18
/* The below code doesn't work because "value" is an optional type variable, unlike "banana" has an explicit non-optional type of Int, so we can't assign a value to variable of different explicit types. If we want to assign the value of an ordinary optional to another variable , we must add an exclamation point (!) at the end of the optional type variable  */

//This code doesn't work
/*  let value: Int? = 17
    let banana: Int = value
*/

//This code works
let value: Int? = 17
let banana: Int = value!

print(banana)

//Exercise 19
/* If value had been nil and I tried to force-unwrap its value, the code triggers a runtime error. That's why always make sure, with "if" statement, if an optional value is non-nil, before using ! to force-unwrap its value */


//Exercise 20
/* The better way to assign value to the banana constant is adding an exclamation point (!) at the end of the value. We also can create an implicity unwrapped optional variable with the value that we want to assign to banana. In this last option we don't need for an exclamation point when we assign the value to banana*/

//Exercise 21
print("############# Exercise 21 #################")

func compSum (num1: Int, num2: Int) -> Int {                      //The function compSum return an Integer
    if num1 == num2{                                             //Evaluate if both values are equals
        return 3*(num1+num2)                                     // If the condition is true return the result
    }
    return 0                                                     //else return "0" to indicae that the number are not equals
}

print(compSum(num1: 44 , num2: 44 ))

//Exercise 22
print("@@@@@@@@@@@@@@ Execise 22 @@@@@@@@@@@@@@@@@")

func checkFive (valueInt: [Int]) -> String{                                 //The function return an String
    if valueInt.count >= 1{                                                 //Firstly I evaluate if input arrays has a size greater or equal to 1
        let idx = valueInt.count
        for _ in valueInt{
            if valueInt[0] == 5 || valueInt[idx-1] == 5{                      //In this IF statement I compare the first and the last value of input's array with "5"
                return "The number 5 appears in the array"
            }
            else{
                return "Condition Failed"
            }
        }
    }
    return "The arrays is too short"                                           //If the array is empty I return an String
}

var arrayss = [5,2,3,5,43,5]

print(checkFive(valueInt: arrayss))

//Exercise 23
print("%%%%%%%%%%%%% Exercise 23 %%%%%%%%%%%%%%%%")

func orderElemt (arrUnord: [Int]) -> [Int]{                             //this function return an Integer value
    var idx = arrUnord.count
    var  arrOrd = Array(repeating: arrUnord[0], count: idx)            //With this sentence I create an array with same size of input array ("arrUnord") and with all its values equals to the
    for num in arrUnord{                                               //first element of input array ("arrUnord")
        idx = idx - 1                                                  // I started from the last index up to the first one
        arrOrd[idx] = num                                               //In this loop I filled the new array ("arrOrd") with the elements in reverse order compared with arrUnord    }
    }
    return arrOrd
}

var arrayRev: [Int] = [5, 6, 22, 65, 90, 103]
print(orderElemt(arrUnord: arrayRev))

//Exercise 24
print("&&&&&&&&&&&& Exercise 24 &&&&&&&&&&&&&&&")

func rotateLeft (arrEl: [Int]) -> [Int]{                                //This function return an integer value
    let totalElemt = arrEl.count-1
    var newArr = arrEl
    let first = newArr[0]
    for i in 0..<totalElemt{
        newArr[i] = newArr [i+1]                                       //I assigned the value in the next position to the current position
    }
    newArr[totalElemt] = first                                         //Finally I assigned the value of the first position in the input array to the last position of the new array
    return newArr
}

let arrRot: [Int] = [1, 2, 3, 8]
print(rotateLeft(arrEl: arrRot))

//Exercise 25
print("!!!!!!!!!!!!! Exercise 25 !!!!!!!!!!!!!!!!")

func SumElt (arrSum: [Int]) -> Int{                                    //This function return an integer value
    if arrSum.count == 4{                                              //Firstly I evaluate if the input array has a length of 4
        var totalSum: Int = 0
        for sum in arrSum{
            totalSum += sum                                            //In the loop I compute the sum of all elements of input array
            
        }
        return totalSum
    }
    return 0                                                           //If input array has less or more than 4 elements I return 0
}

var arrProf = [1, 56, 1, 2]
print(SumElt(arrSum: arrProf))

//Exercise 26
print("************** Exercise 26 *************")

func absRef (_ n: Int) -> Int{                                     //The "_" before function's parameter avoid that I must rewrite the parameter's name once I call the function
    var absDiff: Int
    if n > 51 {
        absDiff = 2*(n-51)                                        //In this case I return the double of absolute difference
    }
    absDiff = -1*(n-51)                                          //To get the absolute difference , the result always must be positive
    return absDiff
}

var thisNum = 10
print(absRef(thisNum))                                             //Just set "thisNum" as inpput of function, without rewrite the paremeter's name

//Exercise 27
print("#################### Exercise 27 ###############")

func exerc27 (_ inp1: Int,_ inp2: Int) -> Bool{                   //This function return a bool value
    if inp1 == 20 || inp2 == 20 || inp1 + inp2 == 20{             // If one input value is 20 or its sum is equal to 20
        return true
    }
    return false
}
  
var prim: Int = 20; var sec: Int = 3
print(exerc27(prim, sec))

//Exercise 28
print("++++++++++++++++++++ Exercise 28 ++++++++++++++++")
//In this exercise i tried to make a function that return if two value has different sign

func exerc28 (_ inp3: Int ,_ inp4: Int) -> Bool{                   //This function return  a bool value
    if inp3 < 0  ||  inp4 < 0{                                      //Firstly I evaluate if one of two inputs is negative,
        if inp3 > 0 || inp4 > 0{                                    //If is true I evaluate if one of them is positive. It's obvious that if only one of the input values was negative then only
            return true                                             //The other one could be positive
        }
        return false                                               //I return false if both are negative
    }
    return false                                                    //I return false if both input value are positive
}

print(exerc28(-4, 3))

//Exercise 29
print("$$$$$$$$$$$$$$$$$$$$$$$$ Exercise 29 $$$$$$$$$$$$")

func exerc29 (_ nbr1: Int,_ nbr2: Int ) -> Bool{
    for i in 10...30 {
        if i == nbr1 || i == nbr2{                                  // I evaluate if one of the input integer is equal to an element in the range 10...30 incluse
            return true                                             //If the previous condition is true, it means that one of the value is in the range. The Function return true
            
        }
    }
    return false
}

print(exerc29(90, 80))

//Exercise 30
print("^^^^^^^^^^^^^^^^^^ Exercise 30 ^^^^^^^^^^^^^^^^")
/*For this function I must change the first and the last character, that's why I think to switching its values it will be more interesting*/

func exerc30 (_ inputW: String) -> String{                                    //At this function, firstly I storage the first and the end value in "frstLtt" and "lastLtt", respectively
    var inputWord = inputW
    let frstLtt = inputWord[inputWord.startIndex]
    let lastLtt = inputWord[inputWord.index(before: inputWord.endIndex)]
    inputWord.remove(at: inputWord.startIndex)                                //Later I remove the first and the last character, previously storaged in the variables "frstLtt" and "lastLtt"
    inputWord.remove(at: inputWord.index(before: inputWord.endIndex))
    inputWord.insert(lastLtt, at: inputWord.startIndex)                       //At the end I insert "frstLtt" and "lastLtt" variables in the last and in the first character, respectively
    inputWord.insert(frstLtt, at: inputWord.endIndex)                         //This function switch the first and the last character of a String
    return inputWord
}

var wordProf: String = "PedromunozElanie"

print(exerc30(wordProf))
