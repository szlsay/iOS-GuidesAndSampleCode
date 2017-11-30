import Foundation

@objc protocol Suspension {
    var suspensionType:SuspensionOption { get };
    
    static func getInstance() -> Suspension;
}

class RoadSuspension : Suspension {
    var suspensionType = SuspensionOption.STANDARD;
    
    fileprivate init() {};
    
    class func getInstance() -> Suspension {
        return RoadSuspension();
    }
}

class OffRoadSuspension : Suspension {
    var suspensionType = SuspensionOption.SOFT;
    
    fileprivate init() {};
    
    class func getInstance() -> Suspension {
        return OffRoadSuspension();
    }
}

class RaceSuspension : NSObject, NSCopying, Suspension {
    var suspensionType = SuspensionOption.SPORTS;
    
    fileprivate override init() {};
    
    func copy(with zone: NSZone?) -> Any {
        return RaceSuspension();
    }
    
    fileprivate class var prototype:RaceSuspension {
        get {
            struct SingletonWrapper {
                static let singleton = RaceSuspension();
            }
            return SingletonWrapper.singleton;
        }
    }
    
    class func getInstance() -> Suspension {
        return prototype.copy() as! Suspension;
    }
}
