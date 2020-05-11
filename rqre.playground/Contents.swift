import UIKit




func ord (_ s : String) -> Int {
    return Int(s.utf16[s.utf16.startIndex]);
}

func ord (_ c : Character) -> Int {
    return ord(String(c));
}

public func solution(_ S: inout String) -> String {
    let S_characters = Array(S.filter{$0 != " "});
    var occurrences = [Int](repeating: 0, count: 26);

    for i in 0...(S_characters.count - 1) {
        occurrences[ord(S_characters[i]) - ord("a")] += 1;
    }
    
    print(occurrences)

    var best_char = [String]()
    var best_res: Int = 0;

    for i in 1...25 {
        if (occurrences[i] >= best_res) {
            best_char.append(String(UnicodeScalar(ord("a") + i)!))
            best_res = occurrences[i];
        }
    }

    return best_char[0];
}
var str = "ab bbeee"
solution(&str)
