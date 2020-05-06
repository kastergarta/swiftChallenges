func expandedForm(_ num: Int) -> String {

  let str = String(num)
  var arr = [String]()
  var result = [String]()
  
  for i in str { arr.append(String(i)) }
  
  for (idx, el) in arr.enumerated(){
    if el != "0"{
      let zero = String(repeating: "0", count: arr.count-1-idx)
      result.append("\(el)\(zero)")
    }
  }
  return result.joined(separator: " + ")
}