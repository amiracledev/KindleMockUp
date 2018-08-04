//
//  Models.swift
//  KindleMockUp
//
//  Created by Amir Nickroo on 8/4/18.
//  Copyright © 2018 Amir Nickroo. All rights reserved.
//

import Foundation

class Book {
    let title : String
    let author: String
    let pages: [Page]
    
    init(title: String, author: String, pages: [Page]) {
        self.author = author
        self.title = title
        self.pages = pages
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
