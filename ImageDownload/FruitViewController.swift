import UIKit

class FruitCell: UITableViewCell {
    
    @IBOutlet weak var fruitLabel : UILabel!
    @IBOutlet weak var fruitImage : UIImageView!

}

struct Fruit : Codable {
    var title : String
    var genus : String
}

class FruitModel {
    
    var fruits = [Fruit]()
    
    init() {
        self.fruits = try! JSONDecoder().decode([Fruit].self, from: Data(contentsOf: Bundle.main.url(forResource: "fruits", withExtension: "json")!))
    }
    
}

class FruitsViewController: UITableViewController {

    let model = FruitModel()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let fruit = model.fruits[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruitCell", for: indexPath) as! FruitCell
        cell.fruitLabel.text = fruit.title
        return cell
    }
    
}
