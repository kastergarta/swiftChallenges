
//https://leetcode.com/problems/multiply-strings/

private extension String {
    subscript (index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}

struct Multiply_Strings {
    static func multiply(num1: String, num2: String) -> String {
        var sum = Array<Character>(repeating: "0", count: num1.count+num2.count)
        let dict: [Character: Int] = [
            "0": 0,
            "1": 1,
            "2": 2,
            "3": 3,
            "4": 4,
            "5": 5,
            "6": 6,
            "7": 7,
            "8": 8,
            "9": 9,
            ]
        for i in (0 ... num1.count - 1).reversed() {
            var carry = 0
            for j in (0 ... num2.count - 1).reversed() {
                let tmp: Int = dict[sum[i + j + 1]]! + dict[num1[i]]! * dict[num2[j]]! + carry;
                sum[i + j + 1] = Character("\(tmp % 10)")
                carry = tmp / 10;
            }
            sum[i] = Character("\(dict[sum[i]]! + carry)")
        }
        for i in (0 ... sum.count - 1).reversed() {
            if sum[i] != "0" {
                return String(sum[0...i])
            }
        }
        return "0"
    }
}
