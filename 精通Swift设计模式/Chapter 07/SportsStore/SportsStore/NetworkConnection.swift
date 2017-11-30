import Foundation

class NetworkConnection {
    
    fileprivate let stockData: [String: Int] = [
        "Kayak" : 10, "Lifejacket": 14, "Soccer Ball": 32,"Corner Flags": 1,
        "Stadium": 4, "Thinking Cap": 8, "Unsteady Chair": 3,
        "Human Chess Board": 2, "Bling-Bling King":4
    ];
    
    func getStockLevel(_ name:String) -> Int? {
        Thread.sleep(forTimeInterval: Double(arc4random() % 2));
        return stockData[name];
    }
}
