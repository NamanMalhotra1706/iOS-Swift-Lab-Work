/*:
## Exercise - Return Values

 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Dan" the return value might be "Hi, Dan! How are you?" Use the function and print the result.
 */
func greeting(to name:String){
    print("Hi, \(name)! How are you?")
}
var name : String = "Naman Malhotra";
greeting(to: name);
//:  Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
func mutiply(first:Int,with second:Int)->Int{
    first*second+2;
}

print("Result \(mutiply(first: 10, with: 20))");
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)
 */
