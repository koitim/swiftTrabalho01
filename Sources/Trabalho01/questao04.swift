class Item {
    var item: Int
    var prev: Item?

    
    init(item: Int) {
        self.item = item
        prev = nil
    }
    
}

class Stack {
    var top: Item?

    init() {
        top = nil
    }
    
    func push(number: Int) {
        let newItem = Item(item: number)
        newItem.prev = top
        top = newItem
    }
    
    func pop() -> Int {
        if top == nil {
            return -1
        }
        let res = top!.item
        top = top!.prev
        return res
    }

    func toString() -> String {
        var res = "["
        var item = top
        while item != nil {
            res += String(item!.item)
            if item!.prev != nil {
                res += " , "
            }
            item = item!.prev
        }
        res += "]"
        return res
    }
}