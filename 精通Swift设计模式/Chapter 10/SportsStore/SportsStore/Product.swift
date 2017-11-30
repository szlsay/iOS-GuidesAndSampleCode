import Foundation

class Product : NSObject, NSCopying {
    
    fileprivate(set) var name:String;
    fileprivate(set) var productDescription:String;
    fileprivate(set) var category:String;
    fileprivate var stockLevelBackingValue:Int = 0;
    fileprivate var priceBackingValue:Double = 0;    
    fileprivate var salesTaxRate:Double = 0.2;
    
    required init(name:String, description:String, category:String, price:Double,
        stockLevel:Int) {
            self.name = name;
            self.productDescription = description;
            self.category = category;
            super.init();
            self.price = price;
            self.stockLevel = stockLevel;
    }
    
    var stockLevel:Int {
        get { return stockLevelBackingValue;}
        set { stockLevelBackingValue = max(0, newValue);}
    }
    
    fileprivate(set) var price:Double {
        get { return priceBackingValue;}
        set { priceBackingValue = max(1, newValue);}
    }
    
    var stockValue:Double {
        get {
            return (price * (1 + salesTaxRate)) * Double(stockLevel);
        }
    }
    
    func copy(with zone: NSZone?) -> Any {
        return Product(name: self.name, description: self.description,
            category: self.category, price: self.price,
            stockLevel: self.stockLevel);
    }
    
    var upsells:[UpsellOpportunities] {
        get {
            return Array();
        }
    }
    
    class func createProduct(_ name:String, description:String, category:String,
        price:Double, stockLevel:Int) -> Product {
            
            var productType:Product.Type;
            
            switch (category) {
            case "Watersports":
                productType = WatersportsProduct.self;
            case "Soccer":
                productType = SoccerProduct.self;
            default:
                productType = Product.self;
            }
            
            return productType.init(name:name, description: description, category: category,
                price: price, stockLevel: stockLevel);
    }
}

enum UpsellOpportunities {
    case swimmingLessons;
    case mapOfLakes;
    case soccerVideos;
}

class WatersportsProduct : Product {

    required init(name: String, description: String, category: String, 
        price: Double, stockLevel: Int) {

        super.init(name: name, description: description, category: category, 
            price: price, stockLevel: stockLevel);
        salesTaxRate = 0.10;
    }
    
    override var upsells:[UpsellOpportunities] {
        return [UpsellOpportunities.swimmingLessons, UpsellOpportunities.mapOfLakes];
    }
}

class SoccerProduct: Product {
    
    required init(name: String, description: String, category: String, 
        price: Double, stockLevel: Int) {
        
        super.init(name: name, description: description, category: category, 
             price: price, stockLevel: stockLevel);
        salesTaxRate = 0.25;
    }
    
    override var upsells:[UpsellOpportunities] {
        return [UpsellOpportunities.soccerVideos];
    }
}
