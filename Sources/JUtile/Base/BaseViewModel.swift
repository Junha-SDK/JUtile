import UIKit

public protocol BaseViewModel: ViewModel {
    
    associatedtype ViewModel: BaseViewModel
        
    associatedtype Input
    associatedtype Output

    func transform(_ input: ViewModel.Input, action: (ViewModel.Output) -> Void) -> ViewModel.Output
}
