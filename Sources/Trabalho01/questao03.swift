class Node {
    var element: Int
    var next: Node?
    var prev: Node?

    
    init(element: Int) {
        self.element = element
        next = nil
        prev = nil
    }
    
}

class List {
    var totalNodes: Int
    var firstNode: Node?

    init() {
        totalNodes = 0
        firstNode = nil
    }
    
    func insert(number: Int) {
        let newNode = Node(element: number)
        if let first = firstNode {
            newNode.next = first
            if let lastNode = first.prev {
                newNode.prev = lastNode
                lastNode.next = newNode
            }
            first.prev = newNode
        } else {
            firstNode = newNode
            newNode.next = firstNode
            newNode.prev = firstNode
        }
        totalNodes += 1
    }
    
    func insert(number: Int, position: Int) -> Bool {
        var res = false
        if let insertionPoint = getNode(position: position) {
            let newNode = Node(element: number)
            newNode.next = insertionPoint
            if let positionBeforeInsertionPoint = insertionPoint.prev {
                newNode.prev = positionBeforeInsertionPoint
                positionBeforeInsertionPoint.next = newNode
            }
            insertionPoint.prev = newNode
            if position == 1 {
                firstNode = newNode
            }
            totalNodes += 1
            res = true
        } else {
            if position == 1 {
                let newNode = Node(element: number)
                firstNode = newNode
                newNode.next = firstNode
                newNode.prev = firstNode
                totalNodes += 1
                res = true
            } else if position == (totalNodes + 1) {
                insert(number: number)
                res = true
            }
        }
        return res
    }
    
    func delete(position: Int) -> Bool {
        if totalNodes == 1 && position == 1 {
            firstNode = nil
            return true
        }
        var res = false
        let nodeDelete = getNode(position: position)
        if let node = nodeDelete {
            if let previousNode = node.prev , let nextNode = node.next {
                if position == 1 {
                    firstNode = nextNode
                }
                previousNode.next = nextNode
                nextNode.prev = previousNode
            }
            totalNodes -= 1
            res = true
        }
        return res
    }
    
    private func getNode(position: Int) -> Node? {
        if position > totalNodes || position < 1 {
            return nil
        }
        var node = firstNode
        for _ in 1..<position {
            node = node!.next
        }
        return node
    }

    func toString() -> String {
        var res = "["
        var node = firstNode
        var i = 1
        while i <= totalNodes {
            res += String(node!.element)
            if i < totalNodes {
                res += " , "
            }
            node = node!.next
            i += 1
        }
        res += "]"
        return res
    }
}