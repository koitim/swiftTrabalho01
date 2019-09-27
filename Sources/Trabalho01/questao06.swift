func reduce(lista: [Int], redutor: (Int , Int) -> Int) -> Int {
    var res = redutor(lista[0] , lista[1])
    for i in 2..<lista.count {
        res = redutor(res , lista[i])
    }
    return res
}