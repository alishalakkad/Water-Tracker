//
//  IceMountainViewController.swift
//  Water-Tracker
//
//  Created by Alisha Lakkad on 4/22/18.
//  Copyright © 2018 Alisha Lakkad. All rights reserved.
//

import UIKit

class IceMountainViewController: UIViewController {
    var waterAmt : Int = 0
    var w : String!
    var w1 : Int!
    @IBAction func amoutOfWaterSliderIceM(_ sender: UISlider) {
        amountofWaterLabelIceM.text = String(Int((sliderOutletIceM.value)*0.338))
    }
    
    @IBOutlet weak var sliderOutletIceM: UISlider!
    @IBOutlet weak var amountofWaterLabelIceM: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        amountofWaterLabelIceM.text = String(Int((sliderOutletIceM.value)*0.338))
        sliderOutletIceM.transform = CGAffineTransform.init(rotationAngle: CGFloat(M_PI_2))
        // Do any additional setup after loading the view.
    }

    @IBAction func addWaterButton(_ sender: Any) {
        w = amountofWaterLabelIceM.text
        let x = Int(w!)
        if let x = x{
            waterAmt = x
        }
        UserDefaults.standard.set(amountofWaterLabelIceM.text, forKey: "iceMountain")
        performSegue(withIdentifier: "addWater4", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let glassOfWater = segue.destination as! ViewController
        glassOfWater.waterLevelIceM = waterAmt - w1
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let x = UserDefaults.standard.object(forKey: "iceMountain") as? String
        {
            w1 = Int(x)
            if let w1 = w1{
                amountofWaterLabelIceM.text = "\(w1)"
                sliderOutletIceM.setValue(Float(w1)/0.338, animated: true)
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
