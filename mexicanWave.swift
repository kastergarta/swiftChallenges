func wave(_ y: String) -> [String] {
  var wave = [String]()
  for i in y.indices {
    if !y[i].isWhitespace {
      wave.append(y[..<i] + y[i].uppercased() + y[y.index(after: i)...])
    }
  }
  
  print(wave)
  return wave
}

////////////////

func wave(_ y: String) -> [String] {
  guard !y.isEmpty else { return [] }  
  var words = [String]()
  
  for (index, char) in y.enumerated() {
    guard char != " " else { continue }    
    var word = Array(y)
    word[index] = Character(char.uppercased())
    words.append(String(word))
  }
  return words
}

////////////////

func wave(_ y: String) -> [String] {

var wave = [String]()
var result = [String]()

for i in y {
  wave.append(String(i))
}

var copy = wave

for (idx, char) in wave.enumerated(){
   if char != " " {
      wave.remove(at: idx)
      wave.insert(char.uppercased(), at: idx)
      result.append(wave.joined(separator: ""))
      wave = copy
    }
  }
return result
}