class Node {
  int data;
  Node? next;

  Node(this.data, {this.next});
}

class LinkedList {
  Node? head;

  void remove (int num ) {
    Node? current = head;
    Node? prev;

    while (current != null) {

      if (current.data == num ) { 

        if (prev != null) {
          prev.next = current.next; } 
        else {
          head = current.next; }
      } 

      else {  prev = current;}

      current = current.next;
    }
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
  

  print("linked list :");
  LL.printL();

  int removenum = 2;
  LL.remove(removenum);

  print(" new linked list $removenum:");
  LL.printL();
}
