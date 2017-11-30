import Foundation;

class City {
    let name:String;
    
    init(_ name:String) {
        self.name = name;
    }
    
    func compareTo(other:City) -> ComparisonResult {
        if (self.name == other.name) {
            return .orderedSame;
        } else if (self.name < other.name) {
            return .orderedDescending;
        } else {
            return .orderedAscending;
        }
    }
}

let nsArray = NSArray(array: [City("London"), City("New York"),
    City("Paris"), City("Rome")]);
let sorted = nsArray.sortedArray(using: Selector(("compareTo:")));

for city in sorted {
//    print(city.name);
    print(city)
}
