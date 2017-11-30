import Foundation

protocol StockValueFormatter {
    func formatTotal(_ total:Double) -> String;
}

class DollarStockValueFormatter : StockValueFormatter {
    func formatTotal(_ total:Double) -> String {
        let formatted = Utils.currencyStringFromNumber(total);
        return "\(formatted)";
    }
}

class PoundStockValueFormatter : StockValueFormatter {
    func formatTotal(_ total:Double) -> String {
        let formatted = Utils.currencyStringFromNumber(total);
        return "£\(dropFirst(formatted))";
    }
}

protocol StockValueConverter {
    func convertTotal(_ total:Double) -> Double;
}

class DollarStockValueConverter : StockValueConverter {
    func convertTotal(_ total:Double) -> Double {
        return total;
    }
}

class PoundStockValueConverter : StockValueConverter {
    func convertTotal(_ total:Double) -> Double {
        return 0.60338 * total;
    }
}
