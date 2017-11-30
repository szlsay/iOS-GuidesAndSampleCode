import Foundation

struct Position {
    var distanceFromRunway:Int;
    var height:Int;
}

class Airplane : MessagePeer {
    var name:String;
    var currentPosition:Position;
    var mediator:MessageMediator;
    let queue = DispatchQueue(label: "posQ", attributes: DispatchQueue.Attributes.concurrent);
    
    init(name:String, initialPos:Position, mediator: MessageMediator) {
        self.name = name;
        self.currentPosition = initialPos;
        self.mediator = mediator;
        mediator.registerPeer(self);
    }
    
    func handleMessage(_ messageType: String, data: Any?) -> Any? {
        var result:Any?;
        switch (messageType) {
        case "changePos":
            if let pos = data as? Position {
                result = otherPlaneDidChangePosition(pos);
            }
        default:
            fatalError("Unknown message type");
        }
        return result;
    }
    
    func otherPlaneDidChangePosition(_ position:Position) -> Bool {
        var result = false;
        self.queue.sync(execute: {() in
            result = position.distanceFromRunway
                == self.currentPosition.distanceFromRunway
                && abs(position.height - self.currentPosition.height) < 1000;
        });
        return result;
    }
    
    func changePosition(_ newPosition:Position) {
        self.queue.sync(flags: .barrier, execute: {() in
            self.currentPosition = newPosition;
            
            let allResults = self.mediator.sendMessage(self,
                messageType: "changePos", data: newPosition);
            for result in allResults {
                if result as? Bool == true {
                    print("\(self.name): Too close! Abort!");
                    return;
                }
            }
            print("\(self.name): Position changed");
        });
    }
    
    func land() {
        self.queue.sync(flags: .barrier, execute: { () in
            self.currentPosition = Position(distanceFromRunway: 0, height: 0);
            self.mediator.unregisterPeer(self);
            print("\(self.name): Landed");
        });
    }
}
