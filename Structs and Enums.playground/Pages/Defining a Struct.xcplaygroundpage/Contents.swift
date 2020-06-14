//: ## Defining a Struct
//: To define a struct in Swift, the following syntax can be used:
//:
//:     struct NameOfStruct {
//:         // variables declarations (known as properties)...
//:     }
struct Student {
    let name: String
    var age: Int
    var school: String
}

struct GeoLocation {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}

struct Point2D {
    var x: Int = 0
    var y: Int = 0
}
//: [Next](@next)
struct Author {
    let firstName: String
    let lastName: String
    var living: Bool
}

struct Movie {
    let title: String
    let year: Int
}
let myMovie = Movie(title: "shazaam", year: 2020)
print("\(myMovie.title)")
var name = myMovie.title

var characterPosition = Point2D(x: 10, y: 10)
// ↓ change the x and y values ↓
characterPosition.x = 5
characterPosition.y = 6

struct Product {
    var name: String
    var price: Double
    mutating func discount() {
       price -= 0.1
    }
    var formattedPrice: String {return "$\(price)"}
}
let myProduct = Product(name: "widget", price: 6.80)

print("\(myProduct.formattedPrice)")


struct Beaker {
    let volumeMilliliters: Double

    // These are US ounces
    var volumeOunces: Double {
        return volumeMilliliters * 0.033814
    }

    func canContainContents(otherBeaker: Beaker) -> Bool {
        return volumeMilliliters >= otherBeaker.volumeMilliliters
    }
}

enum Finger: Int {
   case thumb = 1
   case index = 2
   case middle = 3
   case ring = 4
   case pinky = 5
}
print("stick out your \(Finger.thumb.rawValue)")
