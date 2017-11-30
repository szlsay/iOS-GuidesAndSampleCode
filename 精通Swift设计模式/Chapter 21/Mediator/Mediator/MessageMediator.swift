protocol MessagePeer {
    var name:String { get };
    func handleMessage(_ messageType:String, data:Any?) -> Any?;
}

class MessageMediator {
    fileprivate var peers = [String:MessagePeer]();
    
    func registerPeer(_ peer:MessagePeer) {
        peers[peer.name] = peer;
    }
    
    func unregisterPeer(_ peer:MessagePeer) {
        peers.removeValue(forKey: peer.name);
    }
    
    func sendMessage(_ caller:MessagePeer, messageType:String, data:Any) -> [Any?] {
        var results = [Any?]();
        for peer in peers.values {
            if (peer.name != caller.name) {
                results.append(peer.handleMessage(messageType, data: data));
            }
        }
        return results;
    }
}
