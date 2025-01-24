class Node {
  int data;
  Node? next;
  Node(this.data) {
    this.data = data;
    this.next = null;
  }
}

class Linkedlist {
  Node? head;
  Node? tail;
  Linkedlist() {
    this.head = null;
    this.tail = null;
  }

  void add(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      tail = newNode;
    }
  }

  // Challenge1 : Print nodes in reverse
  void reversePrint() {
    _reversePrintHelper(head);
  }

  void _reversePrintHelper(Node? node) {
    if (node == null) return;
    _reversePrintHelper(node.next);
    print(node.data);
  }

  void reversePrintUsingList() {
    List<int> list = [];
    Node? current = head;
    while (current != null) {
      list.add(current.data);
      current = current.next;
    }
    print(list.reversed);
  }

  // Challenge2 : Find the Middle Node
  Node? findMiddle() {
    Node? slow = head;
    Node? fast = head;
    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }
    return slow;
  }

  // Challenge3 : Reverse Linked List
  void reverse() {
    Node? previous = null;
    Node? current = head;
    Node? next = null;
    while (current != null) {
      next = current.next;
      current.next = previous;
      previous = current;
      current = next;
    }
    head = previous;
  }

  void printLinkedlist() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  // Challenge 4: Remove All Occurrences
  void remove(int value) {
    Node? current = head;
    Node? previous = null;
    while (current != null) {
      if (current.data == value) {
        if (previous == null) {
          head = current.next;
        } else {
          previous.next = current.next;
        }
      } else {
        previous = current;
      }
      current = current.next;
    }
  }
}

void main() {
  Linkedlist linkedlist = Linkedlist();
  linkedlist.add(1);
  linkedlist.add(2);
  linkedlist.add(3);
  linkedlist.add(3);
  linkedlist.add(4);
  linkedlist.add(5);
  linkedlist.reversePrint();
  linkedlist.reversePrintUsingList();
  print("**********************************");
  print(linkedlist.findMiddle()!.data);
  print("**********************************");
  linkedlist.reverse();
  linkedlist.printLinkedlist();
  print("**********************************");
  linkedlist.remove(3);
  linkedlist.printLinkedlist();
}
