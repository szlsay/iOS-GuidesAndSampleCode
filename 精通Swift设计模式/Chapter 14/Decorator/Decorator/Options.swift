class GiftOptionDecorator : Purchase {
    fileprivate let wrappedPurchase:Purchase;
    fileprivate let options:[OPTION];
    
    enum OPTION {
        case giftwrap;
        case ribbon;
        case delivery;
    }
    
    init(purchase:Purchase, options:OPTION...) {
        self.wrappedPurchase = purchase;
        self.options = options;
        super.init(product: purchase.description, price: purchase.totalPrice);
    }
    
    override var description:String {
        var result = wrappedPurchase.description;
        for option in options {
            switch (option) {
            case .giftwrap:
                result = "\(result) + giftwrap";
            case .ribbon:
                result = "\(result) + ribbon";
            case .delivery:
                result = "\(result) + delivery";
            }
        }
        return result;
    }
    
    override var totalPrice:Float {
        var result = wrappedPurchase.totalPrice;
        for option in options {
            switch (option) {
            case .giftwrap:
                result += 2;
            case .ribbon:
                result += 1;
            case .delivery:
                result += 5;
            }
        }
        return result;
    }
}
