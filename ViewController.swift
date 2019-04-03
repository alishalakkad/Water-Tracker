//
//  ViewController.swift
//  Water-Tracker
//
//  Created by Alisha Lakkad on 4/8/18.
//  Copyright © 2018 Alisha Lakkad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //var smartWater : SmartWaterViewController! = nil
    
    @IBOutlet weak var goalWaterTextField: UITextField!
    @IBAction func resetButton(_ sender: Any) {
    UserDefaults.standard.set(0, forKey: "totalWater")
        currentWaterLevelLabel.text = "0"
       // smartWater.amountOfWaterLabel.text = "0"
      //  smartWater.sliderOutlet.setValue(0, animated: true)
    }
    var waterLevelGOW : Int = 0
    var waterLevelSW : Int = 0
    var waterLevelD : Int = 0
    var waterLevelIceM : Int = 0
    var goalWater : String!
    @IBOutlet weak var currentWaterLevelLabel: UILabel!
    @IBAction func iceMountainButton(_ sender: Any) {
        UserDefaults.standard.set(currentWaterLevelLabel.text, forKey: "totalWater")
        UserDefaults.standard.set(goalWaterTextField.text, forKey: "goalWater")
    }
    @IBAction func dasaniButton(_ sender: Any) {
        UserDefaults.standard.set(currentWaterLevelLabel.text, forKey: "totalWater")
        //goalWater = goalWaterTextField.text
        UserDefaults.standard.set(goalWaterTextField.text, forKey: "goalWater")
    }
    @IBAction func smartWaterButton(_ sender: Any) {
        UserDefaults.standard.set(currentWaterLevelLabel.text, forKey: "totalWater")
       UserDefaults.standard.set(goalWaterTextField.text, forKey: "goalWater")
    }
    @IBAction func glassOfWaterButton(_ sender: Any) {
        UserDefaults.standard.set(currentWaterLevelLabel.text, forKey: "totalWater")
        UserDefaults.standard.set(goalWaterTextField.text, forKey: "goalWater")
        performSegue(withIdentifier: "glass", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        currentWaterLevelLabel.layer.cornerRadius = 5
        currentWaterLevelLabel.layer.borderWidth = 1
        currentWaterLevelLabel.layer.borderColor = UIColor.black.cgColor
        currentWaterLevelLabel.layer.backgroundColor = UIColor.white.cgColor
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let smartWater = segue.destination as! SmartWaterViewController
    }
    override func viewDidAppear(_ animated: Bool) {
        
       if let x = UserDefaults.standard.object(forKey: "totalWater") as? String
        {
            let w = Int(x)
            if let w = w{
                currentWaterLevelLabel.text = "\(w + waterLevelGOW + waterLevelSW + waterLevelD + waterLevelIceM)"
            }
            if let x = UserDefaults.standard.object(forKey: "goalWater") as? String
            {
                goalWaterTextField.text = x
                
            }
            
        }
        
        
        
       


        
       // var f = currentWaterLevelLabel.text as! Int
        //currentWaterLevelLabel.text = "\(f+w)"
       // }
       // }
    }


}

