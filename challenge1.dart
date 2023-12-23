void Reverse(List<int> List) {
  if (List.isEmpty) {
    print("The list is empty.");
    
  }

  for (int i = List.length - 1; i >= 0; i--) {
    print(List[i]);
  }
}

void main() {
 
  List<int> NUM = [1, 2, 3, 4, 5];
  print("My list:");
  print(NUM);

  Reverse(NUM);
}