func countBits(_ n: Int) -> Int {
  return Array(String(n, radix: 2)).filter{$0 == "1"}.count
}