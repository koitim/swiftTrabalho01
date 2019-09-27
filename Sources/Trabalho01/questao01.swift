extension Array where Element == Int {
    func media() -> Float {
        var soma = 0
        for number in self {
            soma += number
        }
        return (Float(soma) / Float(self.count))
    }

    func moda() -> Int {
        let arraySorted = self.sorted()        
        var primeiraVez = true
        var moda = -1
        var totalModa = -1
        var totalNumber = 0
        var numberAnt = 0
        for number in arraySorted {
            if primeiraVez {
                primeiraVez = false
                moda = number
                numberAnt = number
                
            }
            if numberAnt != number {
                if totalNumber > totalModa {
                    moda = numberAnt
                    totalModa = totalNumber
                }
                totalNumber = 0
                numberAnt = number
            }
            totalNumber += 1
        }
        if totalNumber > totalModa {
            moda = numberAnt
        }
        return moda
    }

    func mediana() -> Float {
        let arrayAux = self.sorted()
        let resto = self.count % 2
        if resto == 0 {
            let index1 = self.count / 2 
            let index2 = (self.count / 2) + 1
            return Float(arrayAux[index1 - 1] + arrayAux[index2 - 1]) / 2
        } 
        else {
            let index = (self.count / 2) + 1
            return Float(arrayAux[index - 1])
        }
    }
}