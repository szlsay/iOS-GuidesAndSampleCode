import Foundation;

var builder = NSDateComponents();

builder.hour = 10;
builder.day = 6;
builder.month = 9;
builder.year = 1940;

builder.calendar = Calendar.init(identifier: .gregorian)
//builder.calendar = NSCalendar.init(calendarIdentifier: .gregorian) as! Calendar;
//builder.calendar = NSCalendar(calendarIdentifier: NSGregorianCalendar);

var date = builder.date;

print(date!);
