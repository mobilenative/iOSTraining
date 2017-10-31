
import Foundation

let cellModel = HomeCellModel(cat: "Miao",
                              message: "Miao Miao",
                              timestamp: "2017-10-23T02:18:33.238Z")

let mockModels = [cellModel, cellModel]

class HomeViewModel {
    var homeModels: [HomeCellModel] = []
    
    func getData(completion: () -> Void) {
        homeModels = mockModels
        completion()
    }
    
    var count: Int {
        get {
            return homeModels.count
        }
    }
    
    func getCellViewModel(index: Int) -> HomeCellViewModel {
        return HomeCellViewModel(model: homeModels[index])
    }
}
