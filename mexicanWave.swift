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

wave("Hello world")

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