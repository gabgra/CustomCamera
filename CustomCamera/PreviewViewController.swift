
//
//  PreviewViewController.swift
//  CustomCamera
//
//  Created by Qiarra on 21/08/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController
{
    @IBOutlet weak var uiImageOut: UIImageView!
    var image: UIImage!
    let finalImageURL: URL? = nil
    override func viewDidLoad()
    {
        super.viewDidLoad()
        uiImageOut.image = self.image
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelButton_TouchUpInside(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButton_TouchUpInside(_ sender: UIButton)
    {
//        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        //dismiss(animated: true, completion: nil)
        let imageFolder = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        var imageURL = imageFolder?.appendingPathComponent("\(UUID()).jpg")
        let jpegDatam = image.jpegData(compressionQuality: 0.5)
        imageURL = finalImageURL
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "setPhoto" {
            let formView = segue.destination as! FormViewController
            formView.urlImage = self.finalImageURL
        }
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
