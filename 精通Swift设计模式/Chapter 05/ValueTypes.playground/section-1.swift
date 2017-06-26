// 1.值类型，Swift会自动使用原型模式
struct Appointment {
    var name:String;
    var day:String;
    var place:String;
    
    func printDetails(label:String) {
        print("\(label) with \(name) on \(day) at \(place)");
    }
}

var beerMeeting = Appointment(name: "Bob", day: "Mon", place: "Joe's Bar");

var workMeeting = beerMeeting;
workMeeting.name = "Alice";
workMeeting.day = "Fri";
workMeeting.place = "Conference Rm 2";

beerMeeting.printDetails(label:"Social");
workMeeting.printDetails(label:"Work");
