import Foundation

class Pool<T> {
    fileprivate var data = [T]();
    fileprivate let arrayQ = DispatchQueue(label: "arrayQ", attributes: []);
    fileprivate let semaphore:DispatchSemaphore;
    
    init(items:[T]) {
        data.reserveCapacity(data.count);
        for item in items {
            data.append(item);
        }
        semaphore = DispatchSemaphore(value: items.count);
    }
    
    func getFromPool() -> T? {
        var result:T?;
        
        if (semaphore.wait(timeout: DispatchTime.distantFuture) == 0) {
            arrayQ.sync(execute: {() in
                result = self.data.remove(at: 0);
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
}
