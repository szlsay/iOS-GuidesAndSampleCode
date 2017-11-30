import Foundation;

let notifier = NotificationCenter.default

class NotificationPeer {
    let name:String;
    
    init(name:String) {
        self.name = name;
        notifier.addObserver(self, selector:#selector(receiveMessage1(notification:)) , name: NSNotification.Name(rawValue: "message"), object: nil)
//        notifier.addObserver(self, selector: NSSelectorFromString("receiveMessage1:"), name: NSNotification.Name(rawValue: "message"), object: nil)
    }
    
    func sendMessage(message:String) {
        notifier.post(name: NSNotification.Name(rawValue: "message"),
            object: message);
    }
    
    @objc func receiveMessage(notification:NSNotification) {
        print("Peer \(name) received message: \(String(describing: notification.object))");
    }
    
    @objc func receiveMessage1(notification:NSNotification) {
        print("Peer \(name) received message: \(String(describing: notification.object))");
    }
    
}

let p1 = NotificationPeer(name: "peer1");
let p2 = NotificationPeer(name: "peer2");
let p3 = NotificationPeer(name: "peer3");
let p4 = NotificationPeer(name: "peer4");

p3.sendMessage(message: "Hello!123");

