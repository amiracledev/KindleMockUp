//
//  Models.swift
//  KindleMockUp
//
//  Created by Amir Nickroo on 8/4/18.
//  Copyright © 2018 Amir Nickroo. All rights reserved.
//

import UIKit

class Book {
    let title : String
    let author: String
    let image: UIImage
    let pages: [Page]
    
    init(title: String, author: String, pages: [Page], image: UIImage) {
        self.author = author
        self.title = title
        self.pages = pages
        self.image = image
    }
}

class Page {
    let number: Int
    let text: String
    
    init(number: Int, text: String) {
        self.number = number
        self.text = text
    }
}
