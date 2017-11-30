protocol CommandPeer {
    var name:String { get };
}

class Command {
    let function:(CommandPeer) -> Any;
    
    init(function:@escaping (CommandPeer) -> Any) {
        self.function = function;
    }
    
    func execute(_ peer:CommandPeer) -> Any {
        return function(peer);
    }
}

class CommandMediator {
    fileprivate var peers = [String:CommandPeer]();
    
    func registerPeer(_ peer:CommandPeer) {
        peers[peer.name] = peer;
    }
    
    func unregisterPeer(_ peer:CommandPeer) {
        peers.removeValue(forKey: peer.name);
    }
    
    func dispatchCommand(_ caller:CommandPeer, command:Command) -> [Any] {
        var results = [Any]();
        for peer in peers.values {
            if (peer.name != caller.name) {
                results.append(command.execute(peer));
            }
        }
        return results;
    }
}
