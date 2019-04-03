//
//  GlassOfWaterViewController.swift
//  Water-Tracker
//
//  Created by Alisha Lakkad on 4/8/18.
//  Copyright © 2018 Alisha Lakkad. All rights reserved.
//

import UIKit

class GlassOfWaterViewController: UIViewController {

    

    var water : Int = 0
    @IBAction func oneGlassButton(_ sender: Any) {
        self.water += 8
        //amount.text = "\(water)"
        
      performSegue(withIdentifier: "addWater", sender: self)
    }
    
    @IBAction func halfGlassButton(_ sender: Any) {
        self.water += 4
        //amount.text = "\(water)"
       performSegue(withIdentifier: "addWater", sender: self)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //amount.text = "\(water)"

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let glassOfWater = segue.destination as! ViewController
        glassOfWater.waterLevelGOW = water
        //UserDefaults.standard.set(glassOfWater.waterLevel, forKey: "totalWater")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*func createAlert(title:String, message:String){
        let alert = UIAlertController(nibName: title, bundle: message, preferredStyle: )
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
