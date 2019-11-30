var songs: [String] = ["Dia", "Bobo", "CLBK"]

songs.isEmpty
songs.count
songs.append("LALALA")
songs.insert("CD", at: 2)
print(songs[4])
print(songs.capacity)

for song in songs {
    print(songs.firstIndex(of: song)!)
}


for song in songs {
    if songs.firstIndex(of: song)! + 1 == 5 {
        print("love \(songs.firstIndex(of: song)! + 1) . \(song)")
    }else{
        print("\(songs.firstIndex(of: song)! + 1) . \(song)")
    }

}

songs.forEach{ song in
    if songs.firstIndex(of: song)! + 1 == 5 {
        print("love \(songs.firstIndex(of: song)! + 1) . \(song)")
    }else{
        print("\(songs.firstIndex(of: song)! + 1) . \(song)")
    }
    
}



let makhluk:[String:[String]] = ["mamalia": ["kucing", "sapi"], "serangga": ["kecoa", "nyamuk"]]

var filmCategory: [String:[String]] = [:]
filmCategory["Action"] = ["Rambo", "Wiro sableng"]
filmCategory["Horor"] = ["pocong","kuntilanak"]

print(filmCategory)
print(filmCategory.keys)
print(filmCategory.values)

filmCategory.forEach{ film in
    print(film.key)
    for films in film.value{
        print(films)
    }
}


//set
var musicGenre = Set<String>()
musicGenre.isEmpty
musicGenre.count
musicGenre.capacity
musicGenre.insert("rock")
musicGenre.insert("jazz")
print(musicGenre)

for genre in musicGenre {
    print(genre)
}



//latihan
var followingSaya: Set<String> = ["a", "b", "c"]
print(followingSaya)

var followingTemanSaya: Set<String> = ["c", "d", "e"]
print(followingTemanSaya)

for folSaya in followingSaya {
    for folTeman in followingTemanSaya {
        if folSaya == folTeman {
            print(folSaya)
        }
    }
}

let temanSama = followingSaya.intersection(followingTemanSaya)
print(temanSama)
followingSaya.union(followingTemanSaya)


//dictionary
var makananDictionary = [
    "tempe": 1,
    "tahu": 2,
    "nasi": 3,
]

let searchCharFor = "tahu"
let doesExist = makananDictionary[searchCharFor]

makananDictionary.isEmpty
makananDictionary["kubis"] = 5
print(makananDictionary)



//enum

enum ArahMataAngin {
    case utara
    case barat
    case selatan
    case timur
}

let arahDirection: ArahMataAngin = .barat
if arahDirection == ArahMataAngin.barat{
    print("jalan")
}


enum Color{
    case unknown
    case red
    case white
    case black
    case blue
}

struct Toy {
    let name : String
    let color : Color
}

let Barbie = Toy(name: "barbie", color: .black)
print(Barbie.color)



