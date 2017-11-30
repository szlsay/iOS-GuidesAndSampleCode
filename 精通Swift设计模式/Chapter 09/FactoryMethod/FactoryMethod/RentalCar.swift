class RentalCar {
    fileprivate var nameBV:String;
    fileprivate var passengersBV:Int;
    fileprivate var priceBV:Float;
    
    fileprivate init(name:String, passengers:Int, price:Float) {
        self.nameBV = name;
        self.passengersBV = passengers;
        self.priceBV = price;
    }
    
    final var name:String { get { return nameBV; }}
    final var passengers:Int { get { return passengersBV; }};
    final var pricePerDay:Float { get { return priceBV; }};
    
    class func createRentalCar(_ passengers:Int) -> RentalCar? {
        var carImpl:RentalCar.Type?;
        switch (passengers) {
            case 0...3:
                carImpl = Compact.self;
            case 4...8:
                carImpl = SUV.self
            default:
                carImpl = nil;
        }
        return carImpl?.createRentalCar(passengers);
    }
}

class Compact : RentalCar {
    
    fileprivate convenience init() {
        self.init(name: "VW Golf", passengers: 3, price: 20);
    }
    
    fileprivate override init(name: String, passengers: Int, price: Float) {
        super.init(name: name, passengers: passengers, price: price);
    }
    
    override class func createRentalCar(_ passengers:Int) -> RentalCar? {
        if (passengers < 2) {
            return sharedInstance;
        } else {
            return SmallCompact.sharedInstance;
        }
    }
    
    class var sharedInstance:RentalCar {
        get {
            struct SingletonWrapper {
                static let singleton = Compact();
            }
            return SingletonWrapper.singleton;
        }
    }
}

class SmallCompact : Compact {

    fileprivate init() {
        super.init(name: "Ford Fiesta", passengers: 3, price: 15);
    }
    
    override class var sharedInstance:RentalCar {
        get {
            struct SingletonWrapper {
                static let singleton = SmallCompact();
            }
            return SingletonWrapper.singleton;
        }
    }
}

class SUV : RentalCar {

    fileprivate init() {
        super.init(name: "Cadillac Escalade", passengers: 8, price: 75);
    }

    override class func createRentalCar(_ passengers:Int) -> RentalCar? {
        return SUV();
    }
}
