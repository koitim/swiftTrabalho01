protocol StringContract {
    var stringValue: String {get set}
    func transformInto() -> String
}

class EmptyString: StringContract {

    var stringValue: String

    init() {
        stringValue = ""
    }
    
    func transformInto() -> String {
        return ""
    }
}

class ReversedString: StringContract {

    var stringValue: String

    init(_ p1: String) {
        stringValue = p1
    }
    
    func transformInto() -> String {
        var stringAux = stringValue
        var stringResult = ""
        var tam = stringAux.count
        while tam >= 1 {
            tam -= 1
            let index = stringAux.index(stringAux.startIndex, offsetBy: tam)
            stringResult.append(stringAux[index])
        }
        return stringResult
    }
}

class PeLanguageString: StringContract {

    var stringValue: String

    init(_ p1: String) {
        stringValue = p1
    }
    
    func transformInto() -> String {
        let stringAux = stringValue
        let pe = "pe"
        var stringResult = ""
        var contLetras = 0
        for i in 0..<stringAux.count {
            let letra = stringAux[stringAux.index(stringAux.startIndex, offsetBy: i)]
            if letra == " " && i != 0 {
                stringResult.append(pe)
                contLetras = 0
            } else if contLetras == 2 {
                stringResult.append(pe)
                contLetras = 0
            }
            stringResult.append(letra)
            
            if letra == " " {
                stringResult.append(pe)
                contLetras = 0
            } else {
                contLetras += 1
            }
        }
        stringResult.append(pe)

        return stringResult
    }
}