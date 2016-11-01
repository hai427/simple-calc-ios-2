//
//  HistoryViewController.swift
//  simple-calc
//
//  Created by iGuest on 10/31/16.
//  Copyright © 2016 hainguyen. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    
    var inputs = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for input in inputs {
            let label = UILabel(frame: CGRect(x: 0, y: 75 + inputs.index(of: input)! * 30, width: 200, height: 21))
            label.textAlignment = .center
            label.text = input
            self.view.addSubview(label)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
