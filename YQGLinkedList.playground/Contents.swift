class ListNode {
  var val: Int
  var next: ListNode?
  
  init() {
    self.val = 0
    self.next = nil
  }
  
  init(_ val: Int) {
    self.val = val
    self.next = nil
  }
  
  init(_ val: Int, _ next: ListNode?) {
    self.val = val
    self.next = next
  }
}

let linkedArr = [1, 2, 3, 4, 5, 6]
let node6 = ListNode(6)
let node5 = ListNode(5, node6)
let node4 = ListNode(4, node5)
let node3 = ListNode(3, node4)
let node2 = ListNode(2, node3)
let node1 = ListNode(1, node2)

//var temp: ListNode? = node1
//while temp != nil {
//  print(temp?.val)
//  temp = temp?.next ?? nil
//}

func linkedListCount(_ head: ListNode?) -> Int {
  var temp = head
  var count = 0
  while temp != nil {
    temp = temp?.next
    count += 1
  }
  return count
}

// 旋转链表
func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
  if head == nil {
    return nil
  }
  
  var temp = head
  var tail: ListNode?
  
  var count = 0
  while temp != nil {
    if temp?.next == nil {
      tail = temp
    }
    temp = temp?.next
    count += 1
  }
  
  let realK = k % count
  for index in 0..<realK {
    
  }
  
  return nil
}
