/* import UIKit

// custom types

// Store that can sell items

// enum

enum ProductType {
    case laptop
    case phone
    case tv
    case computer
    case accessory
}

let tv = ProductType.tv
let laptop: ProductType = .laptop

// struct

struct Purchase {
    let productName: String
    let purchaseDate: Date
    let productType: ProductType
}

let myNextLaptop = Purchase(productName: "MacBook",
                            purchaseDate: Date(),
                            productType: .laptop)
let myNextPhone = Purchase(productName: "iPhone",
                           purchaseDate: Date(),
                           productType: .phone)
let myNextAccessory = Purchase(productName: "Apple Pencil",
                               purchaseDate: Date(),
                               productType: .accessory)


// class

class Customer {
    var name: String = ""
    var address: String = ""
    var age: Int = 0
    var purchases: [Purchase] = []
    
    init(name: String, address: String, age: Int) {
        self.name = name
        self.address = address
        self.age = age
        self.purchases = []
    }
}

var joe = Customer(name: "Joe Smith",
                   address: "123 Apple Street, Rochester, NY 14623",
                   age: 25)


class Store {
    var name: String
    var address: String
    var customer: [Customer]
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
        self.customer = []
    }
}

let bestBuy = Store(name: "Best Buy", address: "123 Apple Street, Rochester, NY 14623")
bestBuy.customer.append(joe)





// Value types (Pass by value)

let amount: Int = 34

struct DriversLicense {
    var name: String
}

let myLicense = DriversLicense(name: "Harmony Morse")

// Assigning to a variable, property, or passing it to a function/method

var duplicateLicense = myLicense      // creating a copy

print(myLicense.name)

duplicateLicense.name = "John Smith"

print(myLicense.name)
print(duplicateLicense.name)

// Referance types (Pass by reference)

class Wallet {
    var license: DriversLicense
    var material: String
    
    init(license: DriversLicense, material: String) {
        self.license = license
        self.material = material
    }
    
}

let myWallet = Wallet(license: myLicense, material: "Nylon")

let myFavoriteWallet = myWallet         // alias or another name for myWallet

print(myWallet.material)

myFavoriteWallet.material = "Leather"

print(myWallet.material)
print(myFavoriteWallet.material)

 
 */

enum TrainNum {
    case Train1
    case Train2
    case Train3
    case Train4
}

let Train1 = TrainNum.Train1
let Train2 = TrainNum.Train2
let Train3 = TrainNum.Train3
let Train4 = TrainNum.Train4

struct TrainInfo {
    let Train: TrainNum
    let Destination: String
    let Arrival: Date
}

let train1 = TrainInfo(Train: Train1, Destination: "India", Arrival: Date())
let train2 = TrainInfo(Train: Train2, Destination: "China", Arrival: Date())
let train3 = TrainInfo(Train: Train3, Destination: "USA", Arrival: Date())
let train4 = TrainInfo(Train: Train4, Destination: "Australia", Arrival: Date())

class Station {
    var StationNum: Int
    var Loc: String
    var Trains: [TrainInfo]
    
    init(StationNum: Int, Loc: String) {
        self.StationNum = StationNum
        self.Loc = Loc
        self.Trains = []
    }
}

let Station1 = Station(StationNum: 1, Loc: "India")
Station1.Trains.append(train1)
let Station2 = Station(StationNum: 2, Loc: "China")
Station2.Trains.append(train2)
let Station3 = Station(StationNum: 3, Loc: "USA")
Station3.Trains.append(train3)
let Station4 = Station(StationNum: 4, Loc: "Australia")
Station4.Trains.append(train4)



// Class inheritance
























// Value type is like making a copy of the data
// Reference type is when the data is shared



// PASS BY VALUE
struct DriversLicense {
    var name: String
}

let myLicense = DriversLicense(name: "Paul Solt")

var duplicateLicense = myLicense

print(myLicense.name)

duplicateLicense.name = "Billy Smith"

print(myLicense.name)
print(duplicateLicense.name)

// Try it

struct myLic {
    var name: String
    var address: String
}

let mineLicense = myLic(name: "Harmony Morse", address: "13613, 94th Ave NE, Kirkland WA, 98034")


// PASS BY REFERENCE
struct CreditCard {
    var Number: Int
    var expirationDate: String
    var securityCode: String
}

let CreditCard1 = CreditCard(Number: 123, expirationDate: "IDK THE DATE", securityCode: "Faithful")

class Wallet {
    var license: DriversLicense
    var material: String
    var CreditCard: CreditCard
    
    
    init(license: DriversLicense, material: String, CreditCard: CreditCard) {
        self.license = license
        self.material = material
        self.CreditCard = CreditCard
    }
}

let myWallet = Wallet(license: myLicense, material: "Nylon", CreditCard: CreditCard1)

let myFavWallet = myWallet

print(myWallet.material)

// Changing a reference type changes the shared objecy
myFavWallet.material = "Leather"

print(myWallet.material)
print(myFavWallet.material)


let document = TextDocument(filename: "Adventure.txt")
document.text = "I started my journey on the other side of the world ..."
document.isModified = true


// Further customize to take text argument



let manuscript = "I started my journey on the other side of the world ..."
let myStory = TextDocument(filename: "Adventrue.txt", text: manuscript)
let report = TextDocument(filename: "BusinessReport.txt")

class CalenderEvent {
    var title: String
    var date: String
    var isReoccurring: Bool
    var notes: String
    
    init(title:String, date: String, isReoccurring: Bool, notes: String) {
        self.title = title
        self.date = date
        self.isReoccurring = isReoccurring
        self.notes = notes
    }
}

// let Christmas = CalenderEvent(title: "Christmas", date: "Dec 25", isReoccurring = true, notes = "None")

func printDocument(document: TextDocument) {
    print("Filename: \(document.filename)")
    print(document.text)
}

let captiansLog = TextDocument(filename: "Log.txt", text: "We entered uncharted waters ...")

printDocument(document: captiansLog)

class TextDocument {
    var filename: String
    var text: String
    var isModified : Bool
    
    init(filename: String, text: String = "") {
        self.filename = filename
        self.text = text
        self.isModified = false  // default to not modified
    }
    
    func duplicate() -> TextDocument {
        let textCopy = TextDocument(filename: filename, text: text)
        textCopy.isModified = isModified
        return textCopy
    }
}

let diary = TextDocument(filename: "Diary.txt",
                         text: "Dear diary ...")
let duplicateDiary = diary.duplicate()




// If you're 16 and you don't own a car:
var myCar: String? = nil

// If you're 25 and you've been working for 5 years:
myCar = "Subaru WRX"

// If you get in a car accident and your car is totaled:
myCar = nil

// If you use your car insurance to buy a new car:
myCar = "Subaru Forester"

// If you live in Washington D.C. you won't need a car:
myCar = nil

// If you're 35 with 4 kids you would need a minivan:
myCar = "Toyota Sienna"



let number = Int("30")
//let number = Double("cat")

//Challenge
var year = 2199
var age = Int(year - 2200)

print(age)

var optionalNumber: Int? = nil

optionalNumber = 34  // What happens when you comment out this line?

if let number = optionalNumber {
    print("Your number is: \(number)")
} else {
    print("What number? I don't see anything!")
}



func timeToCook(turkeyWeightString: String) {
    if let turkeyWeight = Double(turkeyWeightString) {
        let durationInMinutes = turkeyWeight * 15
        print("Cook your turkey for \(durationInMinutes) minutes.")
    } else {
        print("Invalid input")
    }
}

timeToCook(turkeyWeightString: "18") // prints "Cook your turkey for 270 minutes"

timeToCook(turkeyWeightString: "tofu?") // prints "Invalid input"


func cookDurationForMediumRareSteak(thicknessString: String) {
    // use an if let to print the duration for each side
    if let thicknessString = Double(thicknessString) {
        let durationInMinutes = thicknessString * 15
        print("Cook your turkey for \(durationInMinutes)")
    } else {
        print("Invalid input")
    }
}
//if todaysWeight != nil {
//    let poundsToLose = todaysWeight! - desiredWeight
//
//    print("You need to lose: \(todaysWeight) pounds this summer.")
//} else {
//    print("Step on a scale today — you can't improve what you don't measure")
//}














