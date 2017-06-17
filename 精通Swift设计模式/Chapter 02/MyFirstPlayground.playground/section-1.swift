import UIKit

var str = "Hello, playground"

var counter = 0;
var secondCounter = 0;

for i in 0..<10 {
    counter += i
    print("Counter: \(counter)")
    for j in 1...10 {
        secondCounter += j
    }
}

let textField = UITextField();
textField.frame = CGRect(x: 0, y: 0, width: 200, height: 50);
textField.text = "hello";
textField.backgroundColor = .red;
textField.borderStyle = .bezel;
textField;

