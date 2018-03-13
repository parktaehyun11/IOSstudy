//
//  MakeAccountViewContrller.swift
//  LoginPagePark
//
//  Created by Park Tae Hyun on 2018. 3. 7..
//  Copyright © 2018년 Tae hyun Park. All rights reserved.
//

import UIKit

class MakeAccountViewContrller: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var makeNameLabel: UILabel!
    @IBOutlet weak var makeIdLabel: UILabel!
    @IBOutlet weak var makePwLabel: UILabel!
    @IBOutlet weak var makePwCheckLabel: UILabel!
    @IBOutlet weak var makeNickNameLabel: UILabel!
    @IBOutlet weak var makeEmailLabel: UILabel!
    
    @IBOutlet weak var makeNameTextField: UITextField!
    @IBOutlet weak var makeIdTextField: UITextField!
    @IBOutlet weak var makePwTextField: UITextField!
    @IBOutlet weak var makePwCheckTextField: UITextField!
    @IBOutlet weak var makeNickNameTextField: UITextField!
    @IBOutlet weak var makeEmailTextField: UITextField!
    
    
    @IBAction func moveToResultPage(_ sender: Any) {
            performSegue(withIdentifier: "segueIdentifier", sender: self)
    }
    
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        makeNameTextField.endEditing(true)
        makeIdTextField.endEditing(true)
        makePwTextField.endEditing(true)
        makePwCheckTextField.endEditing(true)
        makeNickNameTextField.endEditing(true)
        makeEmailTextField.endEditing(true)
        return true
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeNameTextField.delegate = self
        makeIdTextField.delegate = self
        makePwTextField.delegate = self
        makePwCheckTextField.delegate = self
        makeNickNameTextField.delegate = self
        makeEmailTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueIdentifier" {
            let nextVC = segue.destination as? ResultViewController
            nextVC?.myname = makeNameTextField.text ?? ""
            nextVC?.myid = makeIdTextField.text ?? ""
            nextVC?.mypw = makePwTextField.text ?? ""
            nextVC?.mypwcheck = makePwCheckTextField.text ?? ""
            nextVC?.mynickname = makeNickNameTextField.text ?? ""
            nextVC?.myemail = makeEmailTextField.text ?? ""
        }
    }
    
    @IBAction func selectImageFromLibrary(_ sender: UITapGestureRecognizer) {
        //makeNameTextField.resignFirstResponder()
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    
    
}

extension MakeAccountViewContrller: UIImagePickerControllerDelegate{
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        // Dictionary? Tuple? Array?
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            return
        }
        
        photoImageView.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
}
extension MakeAccountViewContrller: UINavigationControllerDelegate{
    
}




