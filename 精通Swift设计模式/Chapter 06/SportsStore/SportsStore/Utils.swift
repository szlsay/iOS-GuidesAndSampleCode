import Foundation;

class Utils {
    
    class func currencyStringFromNumber(_ number:Double) -> String {
        let formatter = NumberFormatter();
        formatter.numberStyle = NumberFormatter.Style.currency;
        return formatter.string(from: NSNumber.init(value: number) )!
//        return formatter.string(from: NSNumber( number)) ?? "";
    }
}
