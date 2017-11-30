protocol CarPart {
    
    var name:String { get };
    var price:Float { get };
    
    func addPart(_ part:CarPart) -> Void;
    func removePart(_ part:CarPart) -> Void;
}

class Part : CarPart {
    let name:String;
    let price:Float;
    
    init(name:String, price:Float) {
        self.name = name; self.price = price;
    }
    
    func addPart(_ part: CarPart) {
        // do nothing
    }
    
    func removePart(_ part: CarPart) {
        // do nothing
    }
}


class CompositePart : CarPart {
    let name:String;
    fileprivate var parts:[CarPart];
    
    init(name:String, parts:CarPart...) {
        self.name = name; self.parts = parts;
    }
    
//    var price:Float {
//        return reduce(0) { (subtotal, part) in
//            subtotal + part.price
//        
//        }
//        return reduce(parts, 0, {subtotal, part in
//             subtotal + part.price;
//        });
//    }
    
    func addPart(_ part:CarPart) {
        parts.append(part);
    }
    
    func removePart(_ part:CarPart) {
        for index in 0 ..< parts.count {
            if (parts[index].name  == part.name) {
                parts.remove(at: index);
                break;
            }
        }
    }
}

