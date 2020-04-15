//: ### 2. Function Builders

import Foundation

struct Fish {}

struct Ocean {
    let fish: [Fish]
}

extension Ocean {
    init(@FishBuilder makeFish: () -> [Fish]) {
        self.fish = makeFish()
    }

    init(@FishBuilder makeFish: () -> Fish) {
        self.fish = [makeFish()]
    }
}

@_functionBuilder struct FishBuilder {

    // SwiftUI example
    // https://developer.apple.com/documentation/swiftui/viewbuilder/3278683-buildblock
    static func buildBlock(_ fish: Fish...) -> [Fish] {
        fish
    }
}

let o = Ocean {
    Fish()
    Fish()
    Fish()
}

print(o, terminator: "")
//: Apply the `Ocean` to the problem we described earlier 🌊
//:
//: [Next](@next)



















extension Ocean: CustomStringConvertible {
    var description: String {
        "Ocean with \(fish.count) fish."
    }
}
