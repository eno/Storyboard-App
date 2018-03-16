//
//  DestinationController2.swift
//  Storyboard-App
//
//  Created by eno o udo jr on 3/15/18.
//  Copyright © 2018 eno o udo jr. All rights reserved.
//

import UIKit

class DestinationController2: UIViewController {

    @IBOutlet weak var txtBox: UITextView!
    var sentText: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        txtBox.text = sentText!
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
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
