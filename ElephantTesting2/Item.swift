import Foundation

struct Item: Codable {

    var title: String
    var timeDone: Date?
    var project: String
    var uniqueNum: Int
    var status: String
    var placeholder: Bool
    
    func checkPlaceholder() {
        if placeholder {
            print("I gotta be replaced!")
        } else {
            print("Continue as usual)")
        }
    }
}

