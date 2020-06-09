import UIKit

private extension String {

    func randomAccessCharactersArray() -> [Character] {
        return Array(self)
    }
}

struct Easy_006_ZigZag_Conversion {
    // t = O(N), s = O(N)
    static func convert(s: String, nRows: Int) -> String {
        var arr = Array<String>(repeating: String(), count: nRows)
        var i = 0
        let charArr = s.randomAccessCharactersArray()
        let len = charArr.count
        while i < len {
            var index = 0
            while index < nRows && i < len {
                arr[index].append(charArr[i])
                i += 1
                index += 1
            }
            index = nRows - 2
            while index > 0 && i < len {
                arr[index].append(charArr[i])
                i += 1
                index -= 1
            }
        }
        var res = String()
        for i in 0 ..< nRows {
            res += arr[i]
        }
        return res
    }
}
