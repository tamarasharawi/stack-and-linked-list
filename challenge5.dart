class Node {
  int data;
  Node? next;

  Node(this.data, {this.next});
}

class LinkedList {
  Node? head;

  void reverse() {
    Node? prev = null;
    Node? current = head;
    Node? Next;

    while (current != null) {
      Next = current.next; // Save the next node
      current.next = prev;     // Reverse the link
      prev = current;          // Move prev one step forward
      current = Next;      // Move current one step forward
    }

    head = prev; // Set the head to the last node, which is now the first
  }

  void insert(int data) {
    Node newNode = Node(data, next: head);
    head = newNode;
  }

  void printL() {
    Node? N = head;
    while (N != null) {
      print(N.data);
      N= N.next;
    }
  }
}

void main() {
  LinkedList LL = LinkedList();
 for (int i = 0 ; i<6 ; i++){
  LL.insert(i);
 }
  

  print(" Linked List:");
  LL.printL();

  LL.reverse();

  print("\nReversed Linked List:");
  LL.printL();
}
