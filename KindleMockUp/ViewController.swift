//
//  ViewController.swift
//  KindleMockUp
//
//  Created by Amir Nickroo on 8/4/18.
//  Copyright © 2018 Amir Nickroo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var books: [Book]?
    let cell = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(Bookcell.self, forCellReuseIdentifier: cell)
        navigationItem.title = "Kindle App"
        setUpBooks()
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cell, for: indexPath)
        
        let book = books?[indexPath.row]
//        cell.textLabel?.text = book?.title
//        cell.imageView?.image = book?.image
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = books?.count {
            return count
        }
        
        return 0
    }
    func setUpBooks() {
        let page1 = Page(number: 1, text: "Text for page 1")
        let page2 = Page(number: 2, text: "Text for page 2")
        let pages = [page1, page2]
        let book = Book(title: "Steve Jobs", author: "Walter Isaacspon", pages: pages, image: #imageLiteral(resourceName: "steve"))
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Becraft", pages: [Page(number: 1, text: "Text for page 3"),Page(number: 2, text: "Text for page 2"),Page(number: 3, text: "Text for page 3"),Page(number: 4, text: "Text for page 4")], image: #imageLiteral(resourceName: "bill"))
        
        self.books = [book, book2]
        
        if let unwrappedBooks = self.books {
            
            for book in unwrappedBooks {
                print(book.title)
                for page in book2.pages {
                    print(page.text)
                }
            }
        }
    }
    
}

