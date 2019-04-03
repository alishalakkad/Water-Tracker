//
//  SmartWaterViewController.swift
//  Water-Tracker
//
//  Created by Alisha Lakkad on 4/8/18.
//  Copyright © 2018 Alisha Lakkad. All rights reserved.
//

import UIKit

class SmartWaterViewController: UIViewController {
    var waterAmt : Int = 0
    var w : String!
    var w1 : Int!
    @IBAction func amountOfWaterSlider(_ sender: UISlider) {
   
        amountOfWaterLabel.text = String(Int((sliderOutlet.value)*0.338))
    }
    
    @IBAction func addWaterButton(_ sender: Any) {
        w = amountOfWaterLabel.text
        let x = Int(w!)
        if let x = x{
            waterAmt = x
        }
        UserDefaults.standard.set(amountOfWaterLabel.text, forKey: "smartWater")
       // UserDefaults.standard.set(amountOfWaterLabel.text, forKey: "sliderValue")
        performSegue(withIdentifier: "addWater2", sender: self)
    }
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var amountOfWaterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        amountOfWaterLabel.text = String(Int((sliderOutlet.value)*0.338))
        sliderOutlet.transform = CGAffineTransform.init(rotationAngle: CGFloat(M_PI_2))
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let glassOfWater = segue.destination as! ViewController
                glassOfWater.waterLevelSW = waterAmt - w1
        
         
         
        
    }

    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "smartWater") as? String
        {
            w1 = Int(x)
            if let w1 = w1{
                amountOfWaterLabel.text = "\(w1)"
                sliderOutlet.setValue(Float(w1)/0.338, animated: true)
            }
            
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
