import Foundation

class SpiralProject: Codable {
    var name: String
    var completed: Bool
    var priority: Int
    var type: String
    var deadline: Date?
    var objectives: [Objective]?
    var activeItems: [Item]?
    var inactiveItems: [Item]?
    
    public init(name: String, completed: Bool, priority: Int, type: String, deadline: Date?, objectives: [Objective]?, activeItems: [Item]?, inactiveItems: [Item]?) {
        self.name = name
        self.completed = completed
        self.priority = priority
        self.type = type
        self.deadline = deadline
        self.objectives = objectives
        self.activeItems = activeItems
        self.inactiveItems = inactiveItems
    }
}

struct Objective: Codable {
    var name: String
    var cycle: Bool
    var completed: Bool
    var items: [Item]
    var currentItem: Item?
    
    func itemCompleted(completedItem: Item) {
    }
    
}

let projectArray =
[
    SpiralProject(name: "None", completed: false, priority: 100000, type: "Project", deadline: nil, objectives: nil, activeItems: nil, inactiveItems: nil),
    SpiralProject(name: "Piano", completed: false, priority: 3, type: "Cycle", deadline: nil, objectives: nil, activeItems: nil, inactiveItems: nil),
    SpiralProject(name: "Cleaning", completed: false, priority: 3, type: "Spiral Project", deadline: nil, objectives: nil, activeItems: nil, inactiveItems: nil),
    SpiralProject(name: "Wix", completed: false, priority: 3, type: "Cycle", deadline: nil, objectives: nil, activeItems: nil, inactiveItems: nil)
]

let itemArray = [
    Item(title: "First Item", timeDone: Date(), project: "Wix", uniqueNum: 1, status: "Active", placeholder: false),
    Item(title: "Second Item", timeDone: Date(), project: "Piano", uniqueNum: 2, status: "Active", placeholder: false),
    Item(title: "Third Item", timeDone: Date(), project: "None", uniqueNum: 3, status: "Active", placeholder: false),
    Item(title: "Fourth Item", timeDone: Date(), project: "None", uniqueNum: 4, status: "Active", placeholder: false),
    Item(title: "Fifth Item", timeDone: Date(), project: "None", uniqueNum: 5, status: "Active", placeholder: false)
]

let defaultArray: [Item] = []

var obj1 = Objective(name: "First Objective", cycle: true, completed: false, items: itemArray)
var obj2 = Objective(name: "Second Objective", cycle: true, completed: false, items: defaultArray)

obj1.currentItem = obj1.items[0]
print(obj1.currentItem)








let objective1 = "Item 1"
let objective2 = "Item 2"
let objective3 = "Item 3"

let newStringArray = [objective1, objective2, objective3]



