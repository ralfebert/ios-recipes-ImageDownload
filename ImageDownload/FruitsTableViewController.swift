import UIKit

class FruitsTableViewController: UITableViewController {

    let model = FruitsModel()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let fruit = model.fruits[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruitCell", for: indexPath) as! FruitCell
        
        cell.fruitLabel.text = fruit.title
        cell.fruitImage.image = UIImage(named: "placeholder")
        
        return cell
    }
    
}
