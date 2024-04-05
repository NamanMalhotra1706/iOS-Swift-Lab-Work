/*:
## Exercise - Create a Protocol
 
 Create a protocol called `Vehicle` with two requirements: a nonsettable `numberOfWheels` property of type `Int`, and a function called `drive()`.
 */
protocol Vehicle{
    var numberOfWheels: Int { get }
    
    func drive()
}

//:  Define a `Car` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 4, and `drive()` should print "Vroom, vroom!" Create an instance of `Car`, print its number of wheels, then call `drive()`.
struct Car : Vehicle {
    func drive() {
        print("Has \(wheels) wheels, Vroom,vroom!");
    }
    
    var wheels: Int
    
    var numberOfWheels: Int{
        return wheels
    }
}
var car1 = Car(wheels: 4);
print(car1.numberOfWheels)
print(car1.drive())
//:  Define a `Bike` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 2, and `drive()` should print "Begin pedaling!". Create an instance of `Bike`, print its number of wheels, then call `drive()`.
struct Bike : Vehicle{
    var numberOfWheels: Int{
        return 2;
    }
    
    func drive() {
        print("Begin pedaling!")
    }
}

/*:
[Previous](@previous)  |  page 3 of 5  |  [Next: App Exercise - Similar Workouts](@next)
 */
