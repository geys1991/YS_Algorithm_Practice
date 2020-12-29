import UIKit

public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init() { self.val = 0; self.left = nil; self.right = nil; }
  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
  public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
      self.val = val
      self.left = left
      self.right = right
  }
}

// Create btree

let array = [1,2,3,4,5,6,7]
var node1 = TreeNode(1)
var node2 = TreeNode(2)
var node3 = TreeNode(3)
var node4 = TreeNode(4)
var node5 = TreeNode(5)
var node6 = TreeNode(6)
var node7 = TreeNode(7)
node1.left = node2
node1.right = node3
node2.left = node4
node2.right = node5
node3.left = node6
node3.right = node7

// DFS --- 栈
func BTreeDFS(_ node: TreeNode?) {
  guard let headNode = node else {
    return
  }
  let rootNode = headNode
  var stack: [TreeNode] = [rootNode]
  while !stack.isEmpty {
    let topNode = stack.last
    print("\(String(describing: topNode?.val))")
    stack.popLast()
    if let rightNode = topNode?.right {
      stack.append(rightNode)
    }
    if let leftNode = topNode?.left {
      stack.append(leftNode)
    }
  }
}

// BFS --- 队列
func BTreeBFS(_ node: TreeNode?) {
  guard let headNode = node else {
    return
  }
  let rootNode = headNode
  var queue: [TreeNode] = [rootNode]
  while !queue.isEmpty {
    let firstNode = queue.first
    print("\(String(describing: firstNode?.val))")
    queue.removeFirst()
    if let leftNode = firstNode?.left {
      queue.append(leftNode)
    }
    if let rightNode = firstNode?.right {
      queue.append(rightNode)
    }
  }
}

// 深度优先遍历
BTreeDFS(node1)
// 广度优先遍历
BTreeBFS(node1)


