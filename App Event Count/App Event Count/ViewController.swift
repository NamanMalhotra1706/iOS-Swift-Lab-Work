//
//  ViewController.swift
//  App Event Count
//
//  Created by Student on 01/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)

    @IBOutlet var didFinishLaunching: UILabel!
    var didFinishLaunchingCount = 0
    
    
    @IBOutlet var configurationForConnecting: UILabel!
    var configurationForConnectingCount = 0
    
    
    @IBOutlet var willConnect: UILabel!
    var willConnectCount = 0
    
    
    @IBOutlet var sceneDidBecomeActive: UILabel!
    var didBecomeActiveCount = 0
    
    
    @IBOutlet var sceneWillResignActive: UILabel!
    var willResignActiveCount = 0
    
    
    @IBOutlet var sceneWillEnterForeground: UILabel!
    var willEnterForegroundCount = 0
    
    
    @IBOutlet var sceneDidEnterBackground: UILabel!
    var didEnterBackgroundCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateView(){
        didFinishLaunching.text = "The App has launched \(appDelegate.launchCount) time(s)"
        
        configurationForConnecting.text = "The App is configured for connecting \(appDelegate.configurationForConnectingCount) time(s)"
        
        willConnect.text = "The App will connect \(willConnectCount) time(s)"
        
        sceneDidBecomeActive.text = "The app is now active \(didBecomeActiveCount) time(s)"
        
        sceneWillResignActive.text = "The app has become inactive \(willResignActiveCount) time(s)"
        
        sceneWillEnterForeground.text = "The app has moved to the foreground \(willEnterForegroundCount) time(s)"
        
        sceneDidEnterBackground.text = "The app has been moved to the background \(didEnterBackgroundCount) time(s)"
        
    }


}

