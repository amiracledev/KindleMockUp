//
//  BookCell.swift
//  KindleMockUp
//
//  Created by Amir Nickroo on 8/8/18.
//  Copyright © 2018 Amir Nickroo. All rights reserved.
//

import UIKit

class Bookcell: UITableViewCell {
    
    let coverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }()
    
    let titelLabel: UILabel = {
        let label = UILabel()
        label.text = "This is our title label"
        label.backgroundColor = .red
        return label
    }()
    let authorLabel: UILabel = {
        let label = UILabel()
        label.text = "Thi is some author for the book that we have in some row"
        label.backgroundColor = .green
        return label
    }()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        print("cell is being initialized!")
        backgroundColor = .yellow
        addSubview(coverImageView)
        coverImageView.frame = CGRect(x: 8, y: 8, width: 50, height: 64)
        addSubview(titelLabel)
        titelLabel.frame = CGRect(x: 66, y: 20, width: 200, height: 20)
        addSubview(authorLabel)
        authorLabel.frame = CGRect(x: 66, y: 48, width: 200, height: 20)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
