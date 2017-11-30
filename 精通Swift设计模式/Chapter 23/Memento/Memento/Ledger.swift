import Foundation;

class LedgerEntry {
    let id:Int;
    let counterParty:String;
    let amount:Float;
    
    init(id:Int, counterParty:String, amount:Float) {
        self.id = id; self.counterParty = counterParty; self.amount = amount;
    }
}

class LedgerMemento : Memento {
    let data:Data;
    
    init(data:Data) { self.data = data;}
}

class Ledger : NSObject, Originator, NSCoding {
    fileprivate var entries = [Int:LedgerEntry]();
    fileprivate var nextId = 1;
    var total:Float = 0;
    
    override init() {
        // do nothing - required to allow instances
        // to be created without a coder
    }
    
    required init(coder aDecoder: NSCoder) {
        self.total = aDecoder.decodeFloat(forKey: "total");
        self.nextId = aDecoder.decodeInteger(forKey: "nextId");
        self.entries.removeAll(keepingCapacity: true);
        if let entryArray = aDecoder.decodeData()
            as AnyObject? as? [NSDictionary] {
                for entryDict in entryArray {
                    let id = entryDict["id"] as! Int;
                    let counterParty = entryDict["counterParty"] as! String;
                    let amount = entryDict["amount"] as! Float;
                    self.entries[id] = LedgerEntry(id: id, counterParty: counterParty,
                        amount: amount);
                }
        }
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(total, forKey: "total");
        aCoder.encode(nextId, forKey: "nextId");
        var entriesArray = [NSMutableDictionary]();
        for entry in self.entries.values {
            let dict = NSMutableDictionary();
            dict["id"] = entry.id;
            dict["counterParty"] = entry.counterParty;
            dict["amount"] = entry.amount;
            entriesArray.append(dict);
        }
        aCoder.encode(entriesArray);
    }
    
    func createMemento() -> Memento {
        return LedgerMemento(data: NSKeyedArchiver.archivedData(withRootObject: self));
    }
    
    func applyMemento(_ memento: Memento) {
        if let lmemento = memento as? LedgerMemento {
            if let obj = NSKeyedUnarchiver.unarchiveObject(with: lmemento.data)
                as? Ledger {
                    self.total = obj.total;
                    self.nextId = obj.nextId;
                    self.entries = obj.entries;
            }
        }
    }
    
    func addEntry(_ counterParty:String, amount:Float) {
        nextId += 1;
        let entry = LedgerEntry(id: nextId, counterParty: counterParty,
            amount: amount);
        entries[entry.id] = entry;
        total += amount;
    }
    
    func printEntries() {
        for idSorted in entries.keys.sorted(by: <) {
            print(idSorted)
        }
//        for id in entries.keys.sorted(by: < ) {
//            if let entry = entries[id] {
//                print("#\(id): \(entry.counterParty) $\(entry.amount)");
//            }
//        }
//        print("Total: $\(total)");
//        print("----");
    }
}
