import Foundation

class Pool<T:AnyObject> {
    fileprivate var data = [T]();
    fileprivate let arrayQ = DispatchQueue(label: "arrayQ", attributes: []);
    fileprivate let semaphore:DispatchSemaphore;
    
    fileprivate let itemFactory: () -> T;
    fileprivate let itemAllocator:([T]) -> Int;
    fileprivate let maxItemCount:Int;
    fileprivate var createdCount:Int = 0;
    
    init(itemCount:Int, itemFactory:@escaping () -> T, itemAllocator:@escaping (([T]) -> Int)) {
        self.maxItemCount = itemCount;
        self.itemFactory = itemFactory;
        self.itemAllocator = itemAllocator;
        self.semaphore = DispatchSemaphore(value: itemCount);
    }
    
    func getFromPool() -> T? {
        var result:T?;
        
        if (semaphore.wait(timeout: DispatchTime.distantFuture) == 0) {
            arrayQ.sync(execute: {() in
                if (self.data.count == 0) {
                    result = self.itemFactory();
                    self.createdCount += 1;
                } else {
                    result = self.data.remove(at: self.itemAllocator(self.data));
                }
            })
        }
        return result;
    }
    
    func returnToPool(_ item:T) {
        arrayQ.async(execute: {() in
            self.data.append(item);
            self.semaphore.signal();
        });
    }
    
    func processPoolItems(_ callback:([T]) -> Void) {
        arrayQ.sync(flags: .barrier, execute: {() in
            callback(self.data);
        });
    }
}
