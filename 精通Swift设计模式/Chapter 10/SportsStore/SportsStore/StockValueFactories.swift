import Foundation

class StockTotalFactory {
    
    enum Currency {
        case usd
        case gbp
    }
    
    fileprivate(set) var formatter:StockValueFormatter?;
    fileprivate(set) var converter:StockValueConverter?;
    
    class func getFactory(_ curr:Currency) -> StockTotalFactory {
        if (curr == Currency.usd) {
            return DollarStockTotalFactory.sharedInstance;
        } else {
            return PoundStockTotalFactory.sharedInstance;
        }
    }
}

private class DollarStockTotalFactory : StockTotalFactory {
    
    fileprivate override init() {
        super.init();
        formatter = DollarStockValueFormatter();
        converter = DollarStockValueConverter();
    }
    
    class var sharedInstance:StockTotalFactory {
        get {
            struct SingletonWrapper {
                static let singleton = DollarStockTotalFactory();
            }
            return SingletonWrapper.singleton;
        }
    }
}

private class PoundStockTotalFactory : StockTotalFactory {
    
    fileprivate override init() {
        super.init();
        formatter = PoundStockValueFormatter();
        converter = PoundStockValueConverter();
    }
    
    class var sharedInstance:StockTotalFactory {
        get {
            struct SingletonWrapper {
                static let singleton = PoundStockTotalFactory();
            }
            return SingletonWrapper.singleton;
        }
    }
}
