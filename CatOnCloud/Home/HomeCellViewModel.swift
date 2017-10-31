
import Foundation

class HomeCellViewModel {
    var model: HomeCellModel
    
    init(model: HomeCellModel) {
        self.model = model
    }
    
    var cat: String {
        get {
            return model.cat
        }
    }
    
    var message: String {
        get {
            return model.message
        }
    }
    
    var time: String {
        get {
            return getTime(timestamp: model.timestamp)
        }
    }
    
    private func getTime(timestamp: String) -> String {
        return "5 minutes ago"
    }

}
