import UIKit

var str = "Hello, playground"

var allTails = false

while(!allTails) {
    var coinFlip1 = Int(arc4random()%2)
    var coinFlip2 = Int(arc4random()%2)
    print("Flip\(coinFlip1),Flip \(coinFlip2)")
    if (coinFlip1 == 1 && coinFlip2 == 1){
        allTails = true
    }
}
