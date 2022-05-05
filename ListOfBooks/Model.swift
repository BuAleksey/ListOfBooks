//
//  Model.swift
//  ListOfBooks
//
//  Created by Buba on 05.05.2022.
//

import Foundation

var books: [[String: Any]] = [[:]]

func addBook(at name: String, done: Bool = false) {
    books.append(["name": name, "done": done])
    saveList()
}

func removeBook(at index: Int) {
    books.remove(at: index)
    saveList()
}

func saveList() {
    
}

func loadList() {
    
}
