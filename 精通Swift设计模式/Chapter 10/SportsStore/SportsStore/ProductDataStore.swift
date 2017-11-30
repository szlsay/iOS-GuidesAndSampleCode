import Foundation

final class ProductDataStore {
    var callback:((Product) -> Void)?;
    fileprivate var networkQ:DispatchQueue
    fileprivate var uiQ:DispatchQueue;
    lazy var products:[Product] = self.loadData();
    
    init() {
        networkQ = DispatchQueue.global(priority: DispatchQueue.GlobalQueuePriority.background);
        uiQ = DispatchQueue.main;
    }
    
    fileprivate func loadData() -> [Product] {
        for p in productData {
            self.networkQ.async(execute: {() in
                let stockConn = NetworkPool.getConnection();
                let level = stockConn.getStockLevel(p.name);
                if (level != nil) {
                    p.stockLevel = level!;
                    self.uiQ.async(execute: {() in
                        if (self.callback != nil) {
                            self.callback!(p);
                        }
                    })
                }
                NetworkPool.returnConnecton(stockConn);
            });
        }
        return productData;
    }
    
    fileprivate var productData:[Product] = [
        Product.createProduct("Kayak", description:"A boat for one person",
            category:"Watersports", price:275.0, stockLevel:0),
        Product.createProduct("Lifejacket",
            description:"Protective and fashionable",
            category:"Watersports", price:48.95, stockLevel:0),
        Product.createProduct("Soccer Ball",
            description:"FIFA-approved size and weight",
            category:"Soccer", price:19.5, stockLevel:0),
        Product.createProduct("Corner Flags",
            description:"Give your playing field a professional touch",
            category:"Soccer", price:34.95, stockLevel:0),
        Product.createProduct("Stadium",
            description:"Flat-packed 35,000-seat stadium",
            category:"Soccer", price:79500.0, stockLevel:0),
        Product.createProduct("Thinking Cap",
            description:"Improve your brain efficiency",
            category:"Chess", price:16.0, stockLevel:0),
        Product.createProduct("Unsteady Chair",
            description:"Secretly give your opponent a disadvantage",
            category: "Chess", price: 29.95, stockLevel:0),
        Product.createProduct("Human Chess Board",
            description:"A fun game for the family",
            category:"Chess", price:75.0, stockLevel:0),
        Product.createProduct("Bling-Bling King",
            description:"Gold-plated, diamond-studded King",
            category:"Chess", price:1200.0, stockLevel:0)];

}
