//
//  Model.swift
//  ListOfBooks
//
//  Created by Buba on 05.05.2022.
//

import Foundation

let userDefaults = UserDefaults.standard
var books: [[String: Any]] {
    set {
        userDefaults.set(newValue, forKey: "BooksData")
        userDefaults.synchronize()
    }
    get {
        if let array = userDefaults.array(forKey: "BooksData") as? [[String: Any]] {
            return array
        } else {
            return []
        }
    }
}

func addBook(at name: String, done: Bool = false) {
    books.append(["name": name, "done": done])
}

func removeBook(at index: Int) {
    books.remove(at: index)
}

func changeStatus(at index: Int) -> Bool {
    books[index]["done"] = !(books[index]["done"] as! Bool)
    return books[index]["done"] as! Bool
}
