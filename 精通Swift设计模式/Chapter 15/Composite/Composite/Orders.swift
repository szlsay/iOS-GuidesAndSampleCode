import Foundation

class CustomerOrder {
    let customer:String;
    let parts:[CarPart];
    
    init(customer:String, parts:[CarPart]) {
        self.customer = customer;
        self.parts = parts;
    }
    
    var totalPrice:Float {
        return reduce(parts, 0, {subtotal, part in
            return subtotal + part.price});
    }
    
    func printDetails() {
        print("Order for \(customer): Cost: \(formatCurrencyString(totalPrice))");
    }
    
    func formatCurrencyString(_ number:Float) -> String {
        let formatter = NumberFormatter();
        formatter.numberStyle = NumberFormatter.Style.currency;
        return formatter.string(from: NSNumber(value:number)) ?? "";
    }
}
