import UIKit

protocol ViewModelTransformable {
    associatedtype Input
    associatedtype Output
    func transform(_ input: Input) -> Output
}

class VMa: ViewModelTransformable {
    func transform(_ input: Int) -> Int {
        return input * 2
    }
}

class VCb {
    let viewModel: ViewModelTransformable = VMa()
}

class VCa {
    let viewModel: some ViewModelTransformable = VMa()
}
