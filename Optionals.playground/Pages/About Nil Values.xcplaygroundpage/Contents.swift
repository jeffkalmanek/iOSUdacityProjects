//: ## Optionals
//: Nil is disallowed in most Swift types
//var x: Int
//x = nil
//
//struct Book {
//    let title: String
//    let author: String
//}
//
//var c: Book
//c = nil
//
//var a: Any
//a = "hello"
//a = nil
////: Cool! Except, sometimes we need nil values.
////: 1. A function that cannot return a value
var y: Int
var s1: String
var s2: String

s1 = "123"
s2 = "ABC"

//y = Int(s1)
//y = Int(s2)
//: 2. Properties that cannot or should not be initialized when an instance is created
struct Villain {
    let name: String
    var evilScheme: String?
}

let villain = Villain(name: "Billy", evilScheme: nil)
//: [Next](@next)

var q: Int?
var t1: String

t1 = "ABC"
q = Int(t1)

enum Genre: String {
    case country, blues, folk
}

struct Artist {
    let name: String
    var primaryGenre: Genre?
}

struct Song {
    let title: String
    let released: Int
    var artist: Artist?
}

func getArtistGenre(song: Song) -> String {

    init(name: String, species: String, tailLength:Int?) {
           self.name = name
           self.species = species
           if let tailLength = tailLength {
               self.tail = Tail(length: tailLength)
           } else {
               self.tail = nil
           }
       }
    return Song.init(title: <#T##String#>, released: <#T##Int#>, artist: <#T##Artist?#>)
}
