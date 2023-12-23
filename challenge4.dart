class Node {
  int data;
  Node? next;

  Node(this.data, {this.next});
}

class LList {
  Node? head;

  Node? Middlenode() {
    if (head == null) {
      return null;
    }

    Node? slow = head;
    Node? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }

    return slow;
  }

  void insert(int data) {
    Node newNode = Node(data, next: head);
    head = newNode;
  }
}

void main() {
  LList list = LList();
 
for (int i=1 ; i< 10 ; i++){
  print(i) ; 
list.insert(i);
}


  Node? middleN = list.Middlenode();

  if (middleN != null) {
    print("Middle node  ${middleN.data}");
  } else {
    print("The list is empty.");
  }
}
