func mostCommonName(_ array: [String]) -> String {

    var dictionary = [String: Int]()

    for name in array {
        if let count = dictionary[name] {
            dictionary[name] = count + 1
        } else {
            dictionary[name] = 1
        }
    }

    var mostCommonName = ""  

    for key in dictionary.keys {
        if mostCommonName == "" {
            mostCommonName = key
        } else {
            let count = dictionary[key]!
            if count > dictionary[mostCommonName]! {
                mostCommonName = key
            }
        }
    }
    print(mostCommonName)
    return mostCommonName
}

let nameArr = ["Dennis", "Anna", "Kissinger", "Anna"]
mostCommonName(nameArr)