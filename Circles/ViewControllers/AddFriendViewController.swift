//
//  AddFriendViewController.swift
//  Circles
//
//  Created by Shubham Bhokare on 6/21/20.
//  Copyright © 2020 Shubham Bhokare. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {

    @IBOutlet weak var QRCodeImage: UIImageView!
    @IBOutlet weak var scanButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        generateQRcode()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func generateQRcode(){
        // Get define string to encode
        let myString = "https://pennlabs.org"// Get data from the string
        let data = myString.data(using: String.Encoding.ascii)// Get a QR CIFilter
        guard let qrFilter = CIFilter(name: "CIQRCodeGenerator") else { return }// Input the data
        qrFilter.setValue(data, forKey: "inputMessage")// Get the output image
        guard let qrImage = qrFilter.outputImage else { return }// Scale the image
        let transform = CGAffineTransform(scaleX: 10, y: 10)
        let scaledQrImage = qrImage.transformed(by: transform)// Do some processing to get the UIImage
        let context = CIContext()
        guard let cgImage = context.createCGImage(scaledQrImage, from: scaledQrImage.extent) else { return }
        let processedImage = UIImage(cgImage: cgImage)
        
        QRCodeImage.image = processedImage
    }
    
    @IBAction func scanButtonPressed(_ sender: Any) {
    }
    
}
