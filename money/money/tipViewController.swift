//
//  tipViewController.swift
//  money
//
//  Created by Lance Chou on 2018/5/20.
//  Copyright © 2018年 Lance Chou. All rights reserved.
//

import UIKit

class tipViewController: UIViewController {
    
    @IBOutlet weak var money: UITextField!
    @IBOutlet weak var change: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var buybuy: UIImageView!
    @IBOutlet weak var buy: UIImageView!
    @IBAction func viewTapped(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func changeMoney(_ sender: Any) {
        view.endEditing(true)
        
        if let  moneyText  =  money.text,  let  changeText  =  change.text,  let moneyPrice  =  Double(moneyText),  let  changePrice  =  Double(changeText)  {
            let  resultPrice  =  moneyPrice * changePrice
            result.text  =  "\(resultPrice)"
            buybuy.isHidden = false //顯示clothes圖
            buy.isHidden = true //顯示clothes圖
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
