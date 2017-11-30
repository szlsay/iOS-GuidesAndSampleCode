import Foundation

var queue = DispatchQueue(label: "workQ", attributes: DispatchQueue.Attributes.concurrent);
var group = DispatchGroup();

println("Starting...");

for i in 1 ... 35 {
    queue.async(group: group, execute: {() in
        var book = Library.checkoutBook("reader#\(i)");
        if (book != nil) {
            Thread.sleep(forTimeInterval: Double(arc4random() % 2));
            Library.returnBook(book!);
        } else {
            queue.async(flags: .barrier, execute: {() in
                print("Request \(i) failed");
            });
        }
    });
}

group.wait(timeout: DispatchTime.distantFuture);

queue.sync(flags: .barrier, execute: {() in
    print("All blocks complete");
    Library.printReport();
});
