import UIKit

class ViewController: UIViewController {

    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sample = "sample"
        print(sample)
        
        if true {
            print("Will this line of code ever be reached?")
            someMethod()
        }
        
        
    }
    
    func someMethod() {
        print("Hogya babe 👍");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

