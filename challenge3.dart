class Node {
  int data;
  Node? next;

  Node(this.data);
}

void Reverse(Node? head) {
 
  List<Node> stack = [];

  while (head != null) {
    stack.add(head);
    head = head.next;
  }
  while (stack.isNotEmpty) {
    Node node = stack.removeLast();
    print('${node.data} ');
  }
}

Node push(Node? head, int newData) {
  Node newNode = Node(newData);
  newNode.next = head;
  return newNode;
}

void main() {
  
  Node? head = null;

  for (int i = 0 ; i<6 ; i++){
       head = push(head, i);
  
 }

  print(" Reverse Order:");
  Reverse(head);
}
