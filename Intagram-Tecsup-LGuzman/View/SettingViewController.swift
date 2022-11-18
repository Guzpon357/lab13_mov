
import UIKit

class SettingViewController: UIViewController{
    @IBOutlet weak var tableView: UITableView!
    let options: [SettingsOption] = [
        SettingsOption(name:"Archive", image: "archivebox"),
        SettingsOption(name:"Your active", image: "clock"),
        SettingsOption(name:"Nametag", image: "tag"),
        SettingsOption(name:"Saved", image: "square.and.arrow.down"),
        SettingsOption(name:"Close friends", image: "person"),
        SettingsOption(name:"Discover people", image: "person.3"),
        SettingsOption(name:"Open facebook", image: "shippingbox")
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTable()
    }
    
    func setUpTable() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func onTabBack(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
extension SettingViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for :indexPath)
        var contentListConfig = UIListContentConfiguration.cell()
        contentListConfig.text = options[indexPath.row].name
        contentListConfig.image = UIImage(systemName: options[indexPath.row].image)?.withTintColor(.black,renderingMode:.alwaysOriginal)
        cell.contentConfiguration = contentListConfig
        return cell
    }
}