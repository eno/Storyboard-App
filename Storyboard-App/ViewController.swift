//
//  ViewController.swift
//  Storyboard-App
//
//  Created by eno o udo jr on 3/15/18.
//  Copyright © 2018 eno o udo jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtBox: UITextView!
    var returnedText: String!
    var to : Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    @IBAction func btnHandler(_ sender: Any) {
        guard let btn = sender as? UIButton
            else {return}
        if btn.currentTitle! == "Send to 1"{
            to = 1
        }else{
            to = 2
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if to == 1{
            guard let dest = segue.destination as? DestinationController1
            else {return}
            dest.sentText = txtBox.text!+"\nWas your text from Home"

        }else{
            guard let dest = segue.destination as? DestinationController2
                else {return}
            dest.sentText = txtBox.text!+"\nWas your text from Home"

        }
    }
    @IBAction func home1(_ sender: UIStoryboardSegue){
        if to == 1{
            guard let from1 = sender.source as? DestinationController1 else{return}
            returnedText = from1.txtBox.text!+"\nWelcome home from View 1"
        }else{
            guard let from2 = sender.source as? DestinationController2 else {return}
            returnedText = from2.txtBox.text!+"\nWelcome home from View 2"
        }
        txtBox.text = returnedText
        
    }
}

