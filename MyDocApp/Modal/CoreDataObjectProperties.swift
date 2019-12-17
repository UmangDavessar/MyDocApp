//
//  CoreDataObjectProperties.swift
//  MyDocApp
//
//  Created by Umang Davessar on 12/12/19.
//  Copyright © 2019 Umang Davessar. All rights reserved.
//

import Foundation
import CoreData


extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo");
    }

    @NSManaged public var author: String?
    @NSManaged public var tags: String?
    @NSManaged public var mediaURL: String?
    @NSManaged public var published: String?
    @NSManaged public var descripton: String?

}
