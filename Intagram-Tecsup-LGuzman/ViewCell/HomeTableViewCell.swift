import UIKit

class HomeTableViewCell: UITableViewCell{ 
    @IBOutlet weak var imagePost: UIImageView!
    @IBOutlet weak var descriptionPost: UILabel!
    @IBOutlet weak var titlePost: UILabel!

    override func awakeFromNib(){
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool){
        super.setSelected(selected, animated: animated)
    }
}