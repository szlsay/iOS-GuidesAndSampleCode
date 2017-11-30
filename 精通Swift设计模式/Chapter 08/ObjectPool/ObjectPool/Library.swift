import Foundation

final class Library {
    fileprivate let pool:Pool<Book>;
    
    fileprivate init(stockLevel:Int) {
        
        var stockId = 1;
        
        pool = Pool<Book>(
            itemCount:stockLevel,
            itemFactory: {() in
                
                stockId += 1;
                return BookSeller.buyBook("Dickens, Charles",
                    title: "Hard Times", stockNumber: stockId)},
            itemAllocator: {(books) in
                var selected = 0;
                for index in 1 ..< books.count {
                    if (books[index].checkoutCount < books[selected].checkoutCount) {
                        selected = index;
                    }
                }
                return selected;
            }
        );
    }
    
    fileprivate class var singleton:Library {
        struct SingletonWrapper {
            static let singleton = Library(stockLevel:5);
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
        singleton.pool.processPoolItems({(books) in
            for book in books {
                print("...Book#\(book.stockNumber)...");
                print("Checked out \(book.checkoutCount) times");
                if (book.reader != nil) {
                    print("Checked out to \(book.reader!)");
                } else {
                    print("In stock");
                }
            }
            print("There are \(books.count) books in the pool");
        });
    }
}
