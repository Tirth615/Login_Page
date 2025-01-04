//
//  ViewController.swift
//  Login_Page
//
//  Created by TirthShah on 03/01/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_Full_name: UITextField!
    @IBOutlet weak var txt_User_name: UITextField!
    @IBOutlet weak var txt_Email: UITextField!
    @IBOutlet weak var txt_Password: UITextField!
    
    
    
    @IBOutlet weak var My_Segment_Outlet: UISegmentedControl!
    
    @IBAction func Segment_Action(_ sender: Any) {
        
        if My_Segment_Outlet.selectedSegmentIndex == 0 {
            txt_Full_name.isHidden = false
            txt_Email.isHidden = false
            txt_Full_name.text = ""
            txt_User_name.text = ""
            txt_Email.text = ""
            txt_Password.text = ""
        }else{
            txt_Full_name.isHidden = true
            txt_User_name.isHidden = false
            txt_Email.isHidden = true
            txt_Password.isHidden = false
            txt_User_name.text = ""
            txt_Password.text = ""
        }
    }
    
    @IBAction func btn_Submit(_ sender: Any) {
        
        if My_Segment_Outlet.selectedSegmentIndex == 0 {
            //Registration
            let full_name = txt_Full_name.text
            let user_name = txt_User_name.text
            let email = txt_Email.text
            let password = txt_Password.text
            
            print(full_name!,user_name!,email!,password!)
            
        }else{
            //Login
            let user_name = txt_User_name.text
            let password = txt_Password.text
            print(user_name!,password!)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }


}

