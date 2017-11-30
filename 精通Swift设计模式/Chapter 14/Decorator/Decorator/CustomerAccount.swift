import Foundation

class CustomerAccount {
    let customerName:String;
    var purchases = [Purchase]();
    
    init(name:String) {
        self.customerName = name;
    }
    
    func addPurchase(_ purchase:Purchase) {
        self.purchases.append(purchase);
    }
    
    func printAccount() {
        var total:Float = 0;
        for p in purchases {
            total += p.totalPrice;
            print("Purchase \(p), Price \(formatCurrencyString(p.totalPrice))");
        }
        print("Total due: \(formatCurrencyString(total))");
    }
    
    func formatCurrencyString(_ number:Float) -> String {
        let formatter = NumberFormatter();
        formatter.numberStyle = NumberFormatter.Style.currency;
        return formatter.string(from: NSNumber(value:number)) ?? "";
    }
}
