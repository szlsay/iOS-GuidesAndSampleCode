import Foundation

final class NetworkPool {
    fileprivate let connectionCount = 3;
    fileprivate var connections = [NetworkConnection]();
    fileprivate var semaphore:DispatchSemaphore;
    fileprivate var queue:DispatchQueue;
    
    fileprivate init() {
        for _ in 0 ..< connectionCount {
            connections.append(NetworkConnection());
        }
        semaphore = DispatchSemaphore(value: connectionCount);
        queue = DispatchQueue(label: "networkpoolQ", attributes: []);
    }
    
    fileprivate func doGetConnection() -> NetworkConnection {
        semaphore.wait(timeout: DispatchTime.distantFuture);
        var result:NetworkConnection? = nil;
        queue.sync(execute: {() in
            result = self.connections.remove(at: 0);
        });
        return result!;
    }
    
    fileprivate func doReturnConnection(_ conn:NetworkConnection) {
        queue.async(execute: {() in
            self.connections.append(conn);
            self.semaphore.signal();
        });
    }
    
    class func getConnection() -> NetworkConnection {
        return sharedInstance.doGetConnection();
    }
    
    class func returnConnecton(_ conn:NetworkConnection) {
        sharedInstance.doReturnConnection(conn);
    }
    
    fileprivate class var sharedInstance:NetworkPool {
        get {
            struct SingletonWrapper {
                static let singleton = NetworkPool();
            }
            return SingletonWrapper.singleton;
        }
    }
}
