/*:
## Exercise - For-In Loops
 
 Create a for-in loop that loops through values 1 to 100, and prints each of the values.
 */
for index in 1...100{
    print(index);
}

//:  Create a for-in loop that loops through each of the characters in the `alphabet` string below, and prints each of the values alongside the index.
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" 

for eachAlphabet in alphabet{
    print(eachAlphabet);
}
//:  Create a `[String: String]` dictionary, where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, then use a for-in loop to iterate over the pairs and print out the keys and values in a sentence.
var movementHeartRates: [String:String] = ["Walking": "85", "Running": "120", "Swimming": "130", "Cycling": "128", "Skiing": "114", "Climbing": "129"]

for (movement,HartRate) in movementHeartRates {
    print("During \(movement) you're heart rate goes to \(HartRate)");
}
/*:
page 1 of 6  |  [Next: App Exercise - Movements](@next)
 */