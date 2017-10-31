
import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        NSLayoutConstraint(item: messageLabel, attribute: .leading, relatedBy: .equal, toItem: nameLabel, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        
//        messageLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func updateUI(viewModel: HomeCellViewModel) {
        nameLabel.text = viewModel.cat
        messageLabel.text = viewModel.message
        timestampLabel.text = viewModel.time
    }    
}
