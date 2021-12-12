import Cocoa

enum Family {
    case dad
    case mom
    case sister
    case brother
    
    var name: String {
        switch self {
        case .dad:
            return "Yuriy Gershun"
        case .mom:
            return "Yelena Gershun"
        case .sister:
            return "Esther Gershun"
        case .brother:
            return "Vlad Gershun"
        }
    }
    
    var age: Int {
        switch self {
        case .dad:
            return 57
        case .mom:
            return 46
        case .sister:
            return 22
        case .brother:
            return 24
        }
    }
    
    var info: (String, Int) {
        return (self.name, self.age)
    }
}

print(Family.dad.info)
print(Family.mom.info)


