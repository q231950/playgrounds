import Foundation

//: [Previous](@previous)



struct Fish {}

struct Ocean {
    let fish: [Fish]
}

@_functionBuilder struct FishBuilder {

    // SwiftUI example
    // https://developer.apple.com/documentation/swiftui/viewbuilder/3278683-buildblock
    static func buildBlock(_ fish: Fish...) -> [Fish] {
        fish
    }
}

extension Ocean {
    init(@FishBuilder makeFish: () -> [Fish]) {
        self.fish = makeFish()
    }

    init(@FishBuilder makeFish: () -> Fish) {
        self.fish = [makeFish()]
    }
}

let o = Ocean {
    Fish()
    Fish()
    Fish()
}

print(o, terminator: "")



//: [Next](@next)



















extension Ocean: CustomStringConvertible {
    var description: String {
        "Ocean with \(fish.count) fish."
    }
}
