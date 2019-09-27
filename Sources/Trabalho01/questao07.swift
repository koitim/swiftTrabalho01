func flatmap(lista: [[Int]]) -> [Int] {
    var res: [Int] = []
    for item in lista {
        for i in item {
            res.append(i)
        }
    }
    return res
}