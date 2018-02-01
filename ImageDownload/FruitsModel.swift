import Foundation

struct Fruit : Codable {
    var title : String
    var image : URL?
}

class FruitsModel {
    
    var fruits = [Fruit]()
    
    init() {
        self.fruits = try! JSONDecoder().decode([Fruit].self, from: Data(contentsOf: Bundle.main.url(forResource: "fruits", withExtension: "json")!))
    }
    
}
