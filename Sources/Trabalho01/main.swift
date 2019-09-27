let tbNumbers = [5,5,4,8,3,1,5,9,74,4,5,65,65,5,4,6,56,54,8]
let media = tbNumbers.media()
let moda = tbNumbers.moda()
let mediana = tbNumbers.mediana()
print("Questão 01")
print("Média: \(media)")
print("Moda: \(moda)")
print("Mediana: \(mediana)")
print("")


let vazia = EmptyString()
let reversa = ReversedString("coutinho")
let pe = PeLanguageString("a aula foi boa")
print("Questão 02")
print (vazia.transformInto())
print (reversa.transformInto())
print(pe.transformInto())
print("")

var lista = List()
print("Questão 03")
print(lista.toString())
lista.insert(number: 2)
lista.insert(number: 6)
lista.insert(number: 4)
lista.insert(number: 8)
print(lista.toString())
lista.insert(number: 3, position: 3)
lista.insert(number: 15, position: 1)
lista.insert(number: 1, position: 7)
lista.insert(number: 5, position: 7)
print(lista.toString())
lista.delete(position: 1)
lista.delete(position: 7)
lista.delete(position: 5)
print(lista.toString())
print("")

var pilha = Stack()
print("Questão 04")
print(pilha.toString())
pilha.push(number: 2)
pilha.push(number: 6)
pilha.push(number: 4)
pilha.push(number: 8)
print(pilha.toString())
pilha.pop()
print(pilha.toString())
print("")

print("Questão 05")
let nome = "coutinho"
print (nome.revert())
print("")

print("Questão 06")
let listaInt: [Int] = [1,2,3,4,5]
let funcao = { (_ op1: Int, _ op2: Int) -> Int in
    return op1 + op2
}
let resSoma = reduce(lista: listaInt, redutor: funcao)
print ("resultado da função de soma: \(resSoma)")
let funcaoMultiply = { (_ op1: Int, _ op2: Int) -> Int in
    return op1 * op2
}
let resMult = reduce(lista: listaInt, redutor: funcaoMultiply)
print ("resultado da função de multiplicação: \(resMult)")
print("")

print("Questão 07")
let l = [[1,2,3],[5,4,8,56],[4,52,5,6,1]]
let resL = flatmap(lista: l)
print (resL)
print("")

print("Questão 08")
print("6 + 3 = \(Calculadora.add(6,3))")
print("6 - 3 = \(Calculadora.subtract(6,3))")
print("6 * 3 = \(Calculadora.multiply(6,3))")
print("6 / 4 = \(Calculadora.divide(6,4))")
print("sen(30) = \(Calculadora.seno(30))")
print("cos(30) = \(Calculadora.cosseno(30))")
print("tan(30) = \(Calculadora.tangente(30))")
print("raiz(625) = \(Calculadora.raiz(625))")
print("potência de 2 a 10 = \(Calculadora.potencia(2 , 10))")
print("5! = \(Calculadora.fatorial(5))")
print("ln(5) = \(Calculadora.ln(5))")
print("")