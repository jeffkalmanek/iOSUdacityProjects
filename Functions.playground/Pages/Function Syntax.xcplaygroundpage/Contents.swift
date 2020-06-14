//: ## Functions
//: basic function syntax
func nameOfFunction() {
    // body of function goes here
}
//: defining the "sayHello" function
func sayHello() {
    print("Hello!")
}
//: called "sayHello"
sayHello()
//: [Next](@next)
func loveIt(subject: String){
    print("I love \(subject)")
}
loveIt(subject: "jeff")
var otherName = "billy"
loveIt(subject: otherName)


func areaOfRectangle(width:Int,length:Int){
    let area = width*length
    print("\(area)")
}
areaOfRectangle(width: 5, length: 5)
areaOfRectangle(width: 5, length: 50)
areaOfRectangle(width: 5, length: 500)
areaOfRectangle(width: 5, length: 5000)

func sumOrDifference(a:Int,b:Int,sum:Bool){
    if(sum){
        print("Sum equals \(a+b)")
    } else {
        print("Difference equals \(a-b)")
    }
}
sumOrDifference(a: 2, b: 3, sum: true)
sumOrDifference(a: 25, b: 3, sum: false)
sumOrDifference(a: 2, b: 35, sum: true)
sumOrDifference(a: 27, b: 3, sum: false)

func areaOfTriangle(base:Double,height:Double)->Double{
    return 0.5*base*height
}
let area = areaOfTriangle(base: 5, height: 60)

func endOrYearBonus(basePay:Double,bonus:Double,percentBonus:Double = 0.10)->Double{
    return basePay+bonus+(basePay*percentBonus)
}
print(endOrYearBonus(basePay: 4000, bonus: 0.2))
print(endOrYearBonus(basePay: 8000, bonus: 0.25, percentBonus: 0.5))
    
func addExcitementToString(_ string: String) -> String {
    return string + "!"
}

addExcitementToString("Swift")
addExcitementToString("as;lkdhf")
