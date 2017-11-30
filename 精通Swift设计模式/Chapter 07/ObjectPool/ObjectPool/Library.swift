import Foundation

final class Library {
    fileprivate var books:[Book];
    fileprivate let pool:Pool<Book>;
    
    fileprivate init(stockLevel:Int) {
        books = [Book]();
        for count in 1 ... stockLevel {
           
            books.append(Book(author: "Dickens, Charles", title: "Hard Times",
                stock: count))
        }
        pool = Pool<Book>(items:books);
    }
    
    fileprivate class var singleton:Library {
        struct SingletonWrapper {
            static let singleton = Library(stockLevel:2);
        }
        return SingletonWrapper.singleton;
    }
    
    class func checkoutBook(_ reader:String) -> Book? {
        let book = singleton.pool.getFromPool();
        book?.reader = reader;
        book?.checkoutCount += 1;
        return book;
    }
    
    class func returnBook(_ book:Book) {
        book.reader = nil;
        singleton.pool.returnToPool(book);
    }
    
    class func printReport() {
        for book in singleton.books {
            print("...Book#\(book.stockNumber)...");
            print("Checked out \(book.checkoutCount) times");
            if (book.reader != nil) {
                print("Checked out to \(book.reader!)");
            } else {
                print("In stock");
            }
        }
    }
}
