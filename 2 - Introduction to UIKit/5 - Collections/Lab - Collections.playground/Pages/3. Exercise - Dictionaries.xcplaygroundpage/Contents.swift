/*:
## Exercise - Dictionaries

 Create a variable `[String: Int]` dictionary that can be used to look up the number of days in a particular month. Use a dictionary literal to initialize it with January, February, and March. January contains 31 days, February has 28, and March has 31. Print the dictionary.
 */
var numberOfDaysInMonth : [String:Int] = [:];
var secMethod = Dictionary<String,Int>();
var thirdMethod = [String:Int]();
var numberOfDaysInMonth2 = ["Jan":31,"Feb":28,"March":31];
print(numberOfDaysInMonth2);
//:  It's a leap year! Update the number of days in February to 29 using the `updateValue(_:, forKey:)` method. Print the dictionary.
if let leapYear = numberOfDaysInMonth2.updateValue(29, forKey: "Feb"){
    print(leapYear);
};

//:  Use if-let syntax to retrieve the number of days under "January." If the value is there, print "January has 31 days", where 31 is the value retrieved from the dictionary.

if let numberOfDaysInJan = numberOfDaysInMonth2["Jan"]{
    if(numberOfDaysInJan==31){
        print("January has 31 days");
    }
}
//:  Given the following arrays, create a new [String : [String]] dictionary. `shapesArray` should use the key "Shapes" and `colorsArray` should use the key "Colors." Print the resulting dictionary.
let shapesArray = ["Circle", "Square", "Triangle","Pentagone"];
let colorsArray = ["Red", "Green", "Blue","Pink","Purple"];

//var shapesAndTheirColor : [String:[String]] = [shapesArray[0]:[colorsArray[0],colorsArray[3]],shapesArray[1]:[colorsArray[2],colorsArray[4]],shapesArray[2]:[colorsArray[1],colorsArray[2]],];
//
//print(shapesAndTheirColor);
var shapesAndTheirColor : [String:[String]] = ["Shapes":shapesArray, "Color":colorsArray];
print(shapesAndTheirColor);
//:  Print the last element of `colorsArray`, accessing it through the dictionary you've created. You'll have to use if-let syntax or the force unwrap operator to unwrap what is returned from the dictionary before you can access an element of the array.
//let colorsArraysOfDictionory = shapesAndTheirColor.values;
//print("Colors Array in shapesAndThierColor Dictionary : \(colorsArraysOfDictionory)");
let colorsArraysOfDictionory = shapesAndTheirColor["Color"];
let colorsArraySize = colorsArraysOfDictionory!.count;
print("Last Color : \(colorsArraysOfDictionory![colorsArraySize-1])")
/*:
[Previous](@previous)  |  page 3 of 4  |  [Next: App Exercise - Pacing](@next)
 */
