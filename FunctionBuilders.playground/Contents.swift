import Foundation

struct Fish {}

struct Ocean {
    let fish: [Fish]
}

@_functionBuilder struct FishBuilder {
    
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
