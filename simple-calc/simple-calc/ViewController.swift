//
//  ViewController.swift
//  simple-calc
//
//  Created by iGuest on 10/24/16.
//  Copyright © 2016 hainguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var input = [Double]()
    var operationInput = String()
    var operationEntered = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func numberPressed(_ sender: UIButton) {
        if operationEntered {
            resultLabel.text = ""
            operationEntered = false
        }
        resultLabel.text = resultLabel.text! + sender.titleLabel!.text!
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        if resultLabel.text! != "" {
            input.append(Double(resultLabel.text!)!)
            operationInput = sender.titleLabel!.text!
            resultLabel.text = sender.titleLabel!.text!
            operationEntered = true
        }
    }
    
    @IBAction func equalsPressed(_ sender: UIButton) {
        if Double(resultLabel.text!) != nil {
            input.append(Double(resultLabel.text!)!)
        }
        
        if operationInput != "" && input.count >= 2 {
            switch operationInput {
            case "+":
                resultLabel.text = String(input[0] + input[1])
            case "-":
                resultLabel.text = String(input[0] - input[1])
            case "*":
                resultLabel.text = String(input[0] * input[1])
            case "/":
                resultLabel.text = String(input[0] / input[1])
            case "%":
                resultLabel.text = String(input[0].truncatingRemainder(dividingBy: input[1]))
            case "Count":
                resultLabel.text = String(input.count)
            case "Avg":
                var count: Double = 0
                for item in input{
                    count += Double(item)
                }
                resultLabel.text = String(count/Double(input.count))
            default:
                resultLabel.text = ""
            }
            input = [Double]()
            operationInput = ""
            operationEntered = false
        } else if operationInput == "Fact" {
            var result = 1
            for index in 1...Int(input[0]) {
                result *= index
            }
            resultLabel.text = String(result)
        }
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        resultLabel.text = ""
    }
}
