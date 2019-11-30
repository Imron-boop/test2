////enum itu mendefinisikan value
//
//
//struct Student{
//    var studentID: String
//    var name: String
//    var classOf: String
//
//    func study(course: String){
//        print("\(name) is studying \(course)")
//    }
//}
//
//var firstStudent: Student = Student(studentID: "1234", name: "imron", classOf: "2013")
//print("nama saya \(firstStudent.name)")
//firstStudent.study(course: "ios developer")
//
//
//class Lecturer{
//    //define and properties
//    var lecturerID: String = ""
//    var spesialisation : String = ""
//    var name: String = ""
//    var student: [Student] = []
//    //initialitation declaration
//    init(id: String, special: String, name: String) {
//        self.lecturerID = id
//        self.spesialisation = special
//        self.name = name
//    }
//    //method
//    func showAllStudent() {
//        for studento in student{
//            print("Mr \(name) student is \(studento.name)")
//        }
//    }
//}
//var firstLec: Lecturer = Lecturer(id: "1234", special: "AI", name: "Azmi")
//firstLec.student.append(firstStudent)
//firstLec.student.append(Student(studentID: "123456", name: "Ali", classOf: "2014"))
//firstLec.showAllStudent()
//
//
////type casting
//
////superclass / parrent
//class Mediaitem{
//    var name: String
//    init(name1: String){
//        self.name = name1
//    }
//}
////subclass
//class Movie : Mediaitem{
//    var director: String
//    init(name2: String, director: String){
//        self.director = director
//        super.init(name1: name2)
//    }
//}
////subclass
//class Song : Mediaitem{
//    var artist : String
//    init(name3: String, artist: String) {
//        self.artist = artist
//        super.init(name1: name3)
//    }
//}
////instence
//var frozen: Movie = Movie(name2: "frozen", director: "imron")
//var ben: Song = Song(name3: "ben", artist: "michael")
//
//let library = [
//    Movie(name2: "frozen", director: "imron"),
//    Movie(name2: "PTJ", director: "Joko"),
//    Movie(name2: "gundala", director: "joko"),
//    Song(name3: "hotel california", artist: "budi"),
//    Song(name3: "ben", artist: "michael")
//]
//
//var movieCount = 0
//var songCount = 0
//
//for lib in library{
//    if lib is Movie{
//        movieCount += 1
//    } else if lib is Song{
//        songCount += 1
//    }
//}
//
//print("\(movieCount), \(songCount)")
//
////downcasting
//for item in library {
//    if let movie = item as? Movie{
//        print("movie \(movie.name)")
//    }else if let song = item as? Song{
//        print("\(song.name)")
//    }
//}
//
////superclass
//class Kendaran{
//    var kecepatan: Int
//    var capacity: Int
//    init(kecepatan: Int, capacity: Int) {
//        self.kecepatan = kecepatan
//        self.capacity = capacity
//    }
//}
//
//class Mobil: Kendaran {
//    var roda: Int = 0
//    init(roda: Int, kecepatan: Int, capacity: Int) {
//        self.roda = roda
//        super.init(kecepatan: kecepatan, capacity: capacity)
//    }
//}
//
//class Motor: Kendaran{
//    var stang: String = ""
//    init(stang: String, kecepatan: Int, capacity: Int) {
//        self.stang = stang
//        super.init(kecepatan: kecepatan, capacity: capacity)
//    }
//}
//
//var kendaraan: [Kendaran] = [
//    Mobil(roda: 4, kecepatan: 300, capacity: 2),
//    Mobil(roda: 4, kecepatan: 120, capacity: 4),
//    Motor(stang: "cepit", kecepatan: 130, capacity: 2),
//    Motor(stang: "trail", kecepatan: 140, capacity: 1)
//]
//kendaraan.append(Motor(stang: "tekuk", kecepatan: 150, capacity: 1))
//
//
//
//class Vehicle {
//    var currentSpeed = 0.0
//    var desc: String{
//        return "Traveling at \(currentSpeed) km per hour"
//    }
//    func makeNoice() {
//    }
//}
//let someVehicle = Vehicle()
//print("vehicle: \(someVehicle)")
//
//class Train : Vehicle {
//    override func makeNoice() {
//        print("tut tut tut")
//    }
//}
//let train = Train()
//train.makeNoice()
//
//class Car: Vehicle{
//    var gear = 1
//    override var desc: String{
//        return super.desc + "in gear \(gear)"
//    }
//}
//let car = Car()
//car.currentSpeed = 25.0
//car.gear = 4
//
//print(car.desc)
//
////property observer
////will set = dipanggil sebelum value disimpan
////did set = dipangil sesudah value disimpan
//class AutoCar : Car{
//    override var currentSpeed: Double {
//        didSet{
//            gear = Int(currentSpeed / 10.0) + 1
//        }
//    }
//}
//let autoCar = AutoCar()
//autoCar.currentSpeed = 25
//print(autoCar.desc)
//
//
////PR bikin animal kingdom


//subscript
//cara untuk mengakss informasi dari himpunan, barisan, list.
struct TimesTable{
    let multipliyer : Int
    subscript(index: Int) -> Int{
        return multipliyer * index
    }
}
let threeTimesTable = TimesTable(multipliyer: 3)
print("6 x 3 = \(threeTimesTable[6])")

class DaysOfWeek {
    private var days = ["senin","selasa","rabu","kamis","jumat","sabtu","minggu"]
    //private hanya bisa diakses oleh dia dan turunannya
    subscript(index: Int) -> String{
        get{
            return days[index]
        }
        set(newValue){
            self.days[index] = newValue
        }
    }
}
var p = DaysOfWeek()
print(p[0])
p[0] = "monday"
print(p[0])

//enum Planet : Int{
//    case mercury = 1, venus, earth
//    static subscript(n: Int) -> Planet{
//        return Planet(rawValue: n)!
//    }
//}
// static variable adalah variable yg value nya di share ke semua object dari classnya
class Murid {
    static let section: String = "A"
    static var day : String = "Monday"
    var name: String = ""
    var num: Int = 0
}

let student1 = Murid()
student1.name = "dodit"
print(student1.name)

let student2 = Murid()
student2.name = "imorn"
print(student2.name)

print(Murid.section)
print(Murid.day)

//generic code

// sebelum generic
//protocol Company{
//    func buy(product: product, money: Money)
//    func sell(product: Product.Type, money: Money) -> Product?
//}

// setelah generic
//protocol Company{
//    func buy<T: Legal>(product: T, money: Money)
//    func sell<T: Legal>(product: T.Type, money: Money) -> T?
//}

let intArray = [1,2,3,4,5]
let stringArrsy = ["ios","android", "web"]
func printIntArray(arr: [Int]){
    arr.map{print($0)}
}
func printStringArr(arr:[String]){
    arr.map{print($0)}
}
printIntArray(arr: intArray)
printStringArr(arr: stringArrsy)

func printAnyArray<T>(arr:[T]){
    arr.map{print($0)}
}
printAnyArray(arr: intArray)

//generic func with multiole parameter
func anotherMethod<T, U> (first: T, second: U) {
    print("first one called")
}
func anotherMethod<T> (first: T, second: T) {
    print("second one called")
}
anotherMethod(first: 123, second: "abc")
anotherMethod(first: 123, second: 123)


//guard statements
// statment in swift that helps you return func early, if condition is not met

for i in 1...10{
    guard i.isMultiple(of: 2) else{
        continue
    }
    print(i)
}


