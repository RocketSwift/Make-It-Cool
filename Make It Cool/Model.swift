import Foundation

func makeItCool(notCoolString: String) -> String {
    var coolLetter = ""
    let coolArray = notCoolString.map(){
        let lowercasedLetter = $0.lowercased()
            switch lowercasedLetter {
            case "a":
                coolLetter = "@"
            case "i":
                coolLetter = "1"
            case "s":
                coolLetter = "$"
            case "o":
                coolLetter = "0"
            case "t":
                coolLetter = "+"
            default:
                return String($0)
            }
            return coolLetter
        }
    return coolArray.joined()
}
