enum Cars: String {
    case COMPACT = "VW Golf";
    case SPORTS = "Porsche Boxter";
    case SUV = "Cadillac Escalade";
}

struct Car {
    var carType:Cars;
    var floor:Floorplan;
    var suspension:Suspension;
    var drive:Drivetrain;
    
    init(carType:Cars) {
        let concreteFactory = CarFactory.getFactory(carType);
        self.floor = concreteFactory!.createFloorplan();
        self.suspension = concreteFactory!.createSuspension();
        self.drive = concreteFactory!.createDrivetrain();
        self.carType = carType;
    }
    
    func printDetails() {
        print("Car type: \(carType.rawValue)");
        print("Seats: \(floor.seats)");
        print("Engine: \(floor.enginePosition.rawValue)");
        print("Suspension: \(suspension.suspensionType.rawValue)");
        print("Drive: \(drive.driveType.rawValue)");
    }
}
