import Foundation

class BookSeller {
    class func buyBook(_ author:String, title:String, stockNumber:Int) -> Book {
        return Book(author: author, title: title, stock: stockNumber);
    }
}

class LibraryNetwork {
    
    class func borrowBook(_ author:String, title:String, stockNumber:Int) -> Book {
        return Book(author: author, title: title, stock: stockNumber);
    }
    
    class func returnBook(_ book:Book) {
        // do nothing
    }
}
