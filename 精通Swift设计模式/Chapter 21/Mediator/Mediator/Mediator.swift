import Foundation;

protocol Peer {
    var name:String {get};
    var currentPosition:Position {get};
    func otherPlaneDidChangePosition(_ position:Position) -> Bool;
}

protocol Mediator {
    func registerPeer(_ peer:Peer);
    func unregisterPeer(_ peer:Peer);
    func changePosition(_ peer:Peer, pos:Position) -> Bool;
}

class AirplaneMediator : Mediator {
    fileprivate var peers:[String:Peer];
    fileprivate let queue = DispatchQueue(label: "dictQ", attributes: DispatchQueue.Attributes.concurrent);
    
    init() {
        peers = [String:Peer]();
    }
    
    func registerPeer(_ peer: Peer) {
        self.queue.sync(flags: .barrier, execute: { () in
            self.peers[peer.name] = peer;
        });
    }
    
    func unregisterPeer(_ peer: Peer) {
        self.queue.sync(flags: .barrier, execute: { () in
            _ = self.peers.removeValue(forKey: peer.name);
        });
    }
    
    func changePosition(_ peer:Peer, pos:Position) -> Bool {
        var result = false;
        self.queue.sync(execute: { () in
            
            let closerPeers = self.peers.values.filter({p in
                return p.currentPosition.distanceFromRunway
                    <= pos.distanceFromRunway;
            });
            
            for storedPeer in closerPeers {
                if (peer.name != storedPeer.name
                    && storedPeer.otherPlaneDidChangePosition(pos)) {
                        result = true;
                }
            }
        });
        return result;
    }
}
