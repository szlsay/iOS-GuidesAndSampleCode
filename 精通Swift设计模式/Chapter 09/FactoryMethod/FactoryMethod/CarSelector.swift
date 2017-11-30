class CarSelector {
    class func selectCar(_ passengers:Int) -> String? {
        return RentalCar.createRentalCar(passengers)?.name;
    }
}
