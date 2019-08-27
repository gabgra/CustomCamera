//
//  FormViewController.swift
//  CustomCamera
//
//  Created by Gabriella Gracia MT on 23/08/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class FormViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var addPhotoOut: UILabel!
    @IBOutlet weak var photoButtonOut: UIButton!
    @IBOutlet weak var descAddPhotoOut: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var chooseCategory: UILabel!
    @IBOutlet weak var locationOut: UILabel!
    @IBOutlet weak var judulOut: UILabel!
    @IBOutlet weak var descriptionOut: UILabel!
    @IBOutlet weak var cateforyPickerOut: UIPickerView!
    
    var urlImage: URL?
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        photoButtonOut.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        photoButtonOut.layer.borderWidth = 2
        
        print(urlImage)
        if (urlImage != nil) {
            if let data = try? Data(contentsOf: urlImage!) {
                photoButtonOut.setImage(UIImage(data: data), for: .normal)
            }
        }
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        imagePicker.sourceType = UIImagePickerController.SourceType.camera
        
        imagePicker.allowsEditing = false
        
        self.present(imagePicker, animated: true)
        {
            
        }

        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        if let imagePicker = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
//        {
//            photoButtonOut.image = imagePicker
//        }
//        else
//        {
//
//        }
//
//        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
