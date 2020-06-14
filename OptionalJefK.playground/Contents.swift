/* Quiz on Optionals and chaining
 * good to know that by defining an enum as String it automatically
 * makes the raw value equaly the enum value, the lesson talked about
 * assigning a raw value, and did state a default value would be assigned
 * but only referenced integer.  It's like a trick.  Also no explanation
 * on the ?? as a coalescing operator, so looking back they explain it
 * quickly right before the quiz.  So I'm putting the first example in here
 * also as example code*/

struct Tail {
    var length: String

    init(length: Int) {
        self.length = "\(length)"
    }
}

struct Animal {
    var name:String
    var species: String = "homo sapiens"
    var tail: Tail?

    init(name: String, species: String, tailLength:Int?) {
        self.name = name
        self.species = species
        if let tailLength = tailLength {
            self.tail = Tail(length: tailLength)
        } else {
            self.tail = nil
        }
    }
}

var animal = Animal(name: "Lenny", species: "lemur", tailLength: 12)

if let tailLength = animal.tail?.length {
    print("\(animal.name)'s tail is \(tailLength) cm long")
} else {
    print("\(animal.name) doesn't have a tail.")
}

var animal2 = Animal(name: "Gilbert", species: "gorilla", tailLength: nil)

let tailLength = animal2.tail?.length ?? "0"
print("Tail length: \(tailLength)")

/* so with this last item, why didn't I just assign 0 for tail length in the
 * first place?  Not sure what you really need optionals for when it
 * doesn't seem like they are optional at all*/

/* making a section break between example and quiz*/

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
var artist1 = Artist(name: "Adam Ant", primaryGenre: Genre.blues)
var artist2 = Artist(name: "Procol Harem", primaryGenre: Genre.folk)
var artist3 = Artist(name: "Gary Wright", primaryGenre: nil)
var artist4 = Artist(name: "Three Dog Night", primaryGenre: nil)
var song1 = Song(title: "Strip", released: 1985, artist: artist1)
var song2 = Song(title: "A Whiter Shade of Pale", released: 1967, artist: nil)
var song3 = Song(title: "Dream Weaver", released: 1975, artist: artist3)
var song4 = Song(title: "One", released: 1968, artist: nil)
/*
 * A Song as input, return artist's primary genre raw value
 * If either the artist is nil or the primaryGenre is nil,
 * then return an empty string
 *
 * You must use optional chaining and the nil coalescing operator (??)
 */
func getArtistGenre(song: Song) -> String {
    let primaryGenre = song.artist?.primaryGenre?.rawValue ?? ""
    return primaryGenre
}
print(getArtistGenre(song: song1))
print(getArtistGenre(song: song2))
print(getArtistGenre(song: song3))
print(getArtistGenre(song: song4))
