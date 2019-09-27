extension String {
    func revert() -> String {
        let stringAux = self
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