import UIKit
import Kingfisher
import KingfisherWebP

class FruitsViewControllerKingfisher: UITableViewController {

    let model = FruitsModel()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let fruit = model.fruits[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruitCell", for: indexPath) as! FruitCell
        
        cell.fruitLabel.text = fruit.title
        cell.fruitImage.kf.indicatorType = .activity
        cell.fruitImage.kf.setImage(with: fruit.image, placeholder: #imageLiteral(resourceName: "placeholder"), options: [.processor(WebPProcessor.default), .cacheSerializer(WebPSerializer.default)])
        
        return cell
    }
    
}
