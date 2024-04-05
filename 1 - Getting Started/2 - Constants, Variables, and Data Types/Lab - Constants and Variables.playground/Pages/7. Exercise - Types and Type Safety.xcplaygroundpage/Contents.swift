/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking the variable name.
 */
var firstDecimal = 0.676;
var secondDecimal = 0.094;

print(secondDecimal.customMirror.subjectType)
//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFalse = true;
// firstDecimal = trueOrFalse;
print("error: 7. Exercise - Types and Type Safety.xcplaygroundpage:12:16: error: cannot assign value of type 'Bool' to type 'Double' ");
print("giving this error beacuse of different data types")
//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var str = "Naman";
//firstDecimal = str;
print("Exercise - Types and Type Safety.xcplaygroundpage:17:16: error: cannot assign value of type 'String' to type 'Double'");
print("giving this error beacuse of different data types")
//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var wholeNumber = 2;
//firstDecimal = wholeNumber;
print("Exercise - Types and Type Safety.xcplaygroundpage:22:16: error: cannot assign value of type 'Int' to type 'Double'")
print("giving this error beacuse of different data types")
/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
