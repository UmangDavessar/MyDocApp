//
//  DetailViewController.swift
//  MyDocApp
//
//  Created by Umang Davessar on 14/12/19.
//  Copyright © 2019 Umang Davessar. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DetailViewController: UIViewController {
    
     @IBOutlet var imgPhoto: UIImageView!
     @IBOutlet var lblPublished: UILabel!
     @IBOutlet var lblDescription: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupNavigationBar()
        
    }
    
   //MARK: - NAVIGATION BAR SETUP
    
    private func setupNavigationBar(){
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.black]
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 106.0/255.0, green: 186.0/255.0, blue: 170.0/255.0, alpha: 1.0)
         self.navigationItem.leftBarButtonItem = nil
    }
    
    //MARK: - FETCH DATA FROM DB
    
    func setDetailwithWith(photo: Photo) {
           
           DispatchQueue.main.async {
               self.navigationItem.title = photo.author
            self.lblPublished.text =  "Published On : \(photo.published ?? "14-12-2019")"
               self.lblDescription.text = photo.tags
               
               if let url = photo.mediaURL {
                   self.imgPhoto?.loadImageUsingCacheWithURLString(url, placeHolder: UIImage(named: "placeholder"))
               }
           }
       }
    
}
