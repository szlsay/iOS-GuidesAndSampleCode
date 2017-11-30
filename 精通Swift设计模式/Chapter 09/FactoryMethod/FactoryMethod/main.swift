import Foundation

let passengers = [1, 3, 5];

for p in passengers {
    print("\(p) passengers: \(CarSelector.selectCar(p)!)");
}
