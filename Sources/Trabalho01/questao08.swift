import Foundation
class Calculadora {

    //add
    class func add(_ op1: Int, _ op2: Int) -> Int {
        return op1 + op2
    }

    class func add(_ op1: Int, _ op2: Float) -> Float {
        return Float(op1) + op2
    }

    class func add(_ op1: Int, _ op2: Double) -> Double {
        return Double(op1) + op2
    }

    class func add(_ op1: Float, _ op2: Int) -> Float {
        return op1 + Float(op2)
    }

    class func add(_ op1: Float, _ op2: Float) -> Float {
        return op1 + op2
    }

    class func add(_ op1: Float, _ op2: Double) -> Double {
        return Double(op1) + op2
    }

    class func add(_ op1: Double, _ op2: Int) -> Double {
        return op1 + Double(op2)
    }

    class func add(_ op1: Double, _ op2: Float) -> Double {
        return op1 + Double(op2)
    }

    class func add(_ op1: Double, _ op2: Double) -> Double {
        return op1 + op2
    }
    
    // subtract
    class func subtract(_ op1: Int, _ op2: Int) -> Int {
        return op1 - op2
    }
    
    class func subtract(_ op1: Int, _ op2: Float) -> Float {
        return Float(op1) - op2
    }
    
    class func subtract(_ op1: Int, _ op2: Double) -> Double {
        return Double(op1) - op2
    }

    class func subtract(_ op1: Float, _ op2: Int) -> Float {
        return op1 - Float(op2)
    }
    
    class func subtract(_ op1: Float, _ op2: Float) -> Float {
        return op1 - op2
    }
    
    class func subtract(_ op1: Float, _ op2: Double) -> Double {
        return Double(op1) - op2
    }

    class func subtract(_ op1: Double, _ op2: Int) -> Double {
        return op1 - Double(op2)
    }
    
    class func subtract(_ op1: Double, _ op2: Float) -> Double {
        return op1 - Double(op2)
    }
    
    class func subtract(_ op1: Double, _ op2: Double) -> Double {
        return op1 - op2
    }


    // multiply    
    class func multiply(_ op1: Int, _ op2: Int) -> Int {
        return op1 * op2
    }
    
    class func multiply(_ op1: Int, _ op2: Float) -> Float {
        return Float(op1) * op2
    }
    
    class func multiply(_ op1: Int, _ op2: Double) -> Double {
        return Double(op1) * op2
    }

    class func multiply(_ op1: Float, _ op2: Int) -> Float {
        return op1 * Float(op2)
    }
    
    class func multiply(_ op1: Float, _ op2: Float) -> Float {
        return op1 * op2
    }
    
    class func multiply(_ op1: Float, _ op2: Double) -> Double {
        return Double(op1) * op2
    }

    class func multiply(_ op1: Double, _ op2: Int) -> Double {
        return op1 * Double(op2)
    }
    
    class func multiply(_ op1: Double, _ op2: Float) -> Double {
        return op1 * Double(op2)
    }
    
    class func multiply(_ op1: Double, _ op2: Double) -> Double {
        return op1 * op2
    }


    // divide    
    class func divide(_ op1: Int, _ op2: Int) -> Double {
        return Calculadora.divide(Double(op1) , Double(op2))
    }
    
    class func divide(_ op1: Int, _ op2: Float) -> Float {
        return Float(op1) / op2
    }
    
    class func divide(_ op1: Int, _ op2: Double) -> Double {
        return Double(op1) / op2
    }
    
    class func divide(_ op1: Float, _ op2: Int) -> Float {
        return op1 / Float(op2)
    }
    
    class func divide(_ op1: Float, _ op2: Float) -> Float {
        return op1 / op2
    }
    
    class func divide(_ op1: Float, _ op2: Double) -> Double {
        return Double(op1) / op2
    }
    
    class func divide(_ op1: Double, _ op2: Int) -> Double {
        return op1 / Double(op2)
    }
    
    class func divide(_ op1: Double, _ op2: Float) -> Double {
        return op1 / Double(op2)
    }
    
    class func divide(_ op1: Double, _ op2: Double) -> Double {
        return  op1 / op2
    }
    
    

    class func seno(_ op: Double) -> Double {
        return sin(op * Double.pi / 180)
    }
    
    class func cosseno(_ op: Double) -> Double {
        return cos(op * Double.pi / 180)
    }
    
    class func tangente(_ op: Double) -> Double {
        return Calculadora.seno(op) / Calculadora.cosseno(op)
    }
    
    
    class func raiz(_ op: Int) -> Double {
        return sqrt(Double(op))
    }
    
    class func raiz(_ op: Float) -> Double {
        return sqrt(Double(op))
    }
    
    class func raiz(_ op: Double) -> Double {
        return sqrt(op)
    }


    
    class func potencia(_ base: Int, _ potencia: Int) -> Double {
        return pow(Double(base) , Double(potencia))
    }
    

    class func fatorial(_ op: Int) -> Int {
        var res = 1
        if op > 1 {   
            for i in 2...op {
                res *= i
            }
        }
        return res
    }
    

    class func ln(_ op: Int) -> Double {
        return log(Double(op))
    }
}