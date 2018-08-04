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
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
        view.backgroundColor = .blue
        navigationItem.title = "Kindle App"
        setUpBooks()
  
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func setUpBooks() {
        let page1 = Page(number: 1, text: "Text for page 1")
        let page2 = Page(number: 2, text: "Text for page 2")
        
        let pages = [page1, page2]
        
        let book = Book(title: "Steve Jobs", author: "Walter Isaacspon", pages: pages)
        print(book.title)
        print("Title: \(book.title)")
        
        let firstPage = book.pages[0]
        print(firstPage.text)
    
        let book2 = Book(title: "Bill Gate: A Biography", author: "Michael Becraft", pages: [Page(number: 1, text: "Text for page 3"),Page(number: 2, text: "Text for page 2"),Page(number: 3, text: "Text for page 3"),Page(number: 4, text: "Text for page 4")])
        
        self.books = [book, book2]
        
//        guard let books = self.books else { return }
        
        
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

