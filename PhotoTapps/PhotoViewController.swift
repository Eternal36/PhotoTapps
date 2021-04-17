//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Дмитрий Бельков on 17.04.2021.
//

import UIKit

class PhotoViewController: UIViewController {
    var image: UIImage?

    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно!")
            }
        }
        
        present(shareController, animated: true, completion: nil)
    }
    
}
