import Cocoa

enum Family {
    case dad
    case mom
    case sister
    case brother
}

var currentPerson = Family.dad

var name: String {
    switch currentPerson {
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
    switch currentPerson {
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

func info(person: Family) -> (String, Int) {
    currentPerson = person
    return (name, age)
}

print(info(person: Family.brother))

