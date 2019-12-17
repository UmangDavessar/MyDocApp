//
//  TableViewCell.swift
//  MyDocApp
//
//  Created by Umang Davessar on 12/12/19.
//  Copyright © 2019 Umang Davessar. All rights reserved.
//

import Foundation
import UIKit


class TableViewCell: UITableViewCell {
    
    @IBOutlet var photoImageview: UIImageView?
    @IBOutlet var authorLabel: UILabel?
    @IBOutlet var tagsLabel: UILabel?
    @IBOutlet var dividerLineView: UIView?
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setPhotoCellWith(photo: Photo) {
        
        DispatchQueue.main.async {
            self.authorLabel?.text = photo.author
            self.tagsLabel?.text = photo.tags
            if let url = photo.mediaURL {
                self.photoImageview?.loadImageUsingCacheWithURLString(url, placeHolder: UIImage(named: "placeholder"))
            }
        }
    }
}


