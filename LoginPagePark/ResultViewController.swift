//
//  ResultViewController.swift
//  LoginPagePark
//
//  Created by Park Tae Hyun on 2018. 3. 7..
//  Copyright © 2018년 Tae hyun Park. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultNameLabel: UILabel!
    @IBOutlet weak var resultIdLabel: UILabel!
    @IBOutlet weak var resultPwLabel: UILabel!
    @IBOutlet weak var resultPwCheckLabel: UILabel!
    @IBOutlet weak var resultNickNameLabel: UILabel!
    @IBOutlet weak var resultEmailLabel: UILabel!
    var myname = ""
    var myid = ""
    var mypw = ""
    var mypwcheck = ""
    var mynickname = ""
    var myemail = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        resultNameLabel.text = myname
        resultIdLabel.text = myid
        resultPwLabel.text = mypw
        resultPwCheckLabel.text = mypwcheck
        resultNickNameLabel.text = mynickname
        resultEmailLabel.text = myemail
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
