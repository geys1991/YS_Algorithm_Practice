import UIKit

protocol YSStackNode {
  var value: String? { get set }
}

class Node: YSStackNode {
  var value: String?
  
  init(_ v: String) {
    value = v
  }
}

struct YSStack {
  
  typealias StackNode = YSStackNode
  
  var stackContent: [StackNode] = []
  
  // push
  mutating func push(element: StackNode) {
    stackContent.append(element)
  }
  
  // pop
  @discardableResult
  mutating func pop() -> Bool {
    if stackContent.count == 0 {
      return false
    } else {
      stackContent.popLast()
      return true
    }
  }
  
  // peek
  @discardableResult
  func peek() -> StackNode? {
    return stackContent.last
  }
  
  // all nodes
  func allNodes() {
    print("Print Nodes from top to bottom!")
    var stackTemp: [StackNode] = stackContent
    
    while !stackTemp.isEmpty {
      let element = stackTemp.popLast()
      print(element?.value ?? "")
    }
    print("------------End----------------")
  }
  
}


//var stack = YSStack()
//let node1 = Node("1")
//let node2 = Node("2")
//
//stack.push(element: node1)
//stack.push(element: node2)
////stack.peek()
//stack.allNodes()
//
//stack.peek()
//stack.pop()
//stack.peek()
