//
//  ViewController.swift
//  ToDo
//
//  Created by sput on 6/27/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtitem: UITextField!
    @IBOutlet weak var txtList: UITextView!
    var itemsToDo:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }//viewDidLoad

    @IBAction func additem(_ sender: Any) {
        if (txtitem.text!=="") {
            return
        }
        
        itemsToDo.append(txtitem.text!)
        txtList.text=""
        
        for item in itemsToDo {
            txtList.text.append("\(item)\n")
        }//itemsToDo loop
        
        txtitem.text=""
        
    }//additem
    
}//ViewController

