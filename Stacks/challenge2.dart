class Stack {
  List _stack = [];

  void push(var item) {
    _stack.add(item);
  }

  void pop() {
    if (_stack.isNotEmpty) {
      _stack.removeLast();
    }
  }

  bool isEmpty() {
    return _stack.isEmpty;
  }
}

bool balanceParanthesis(String str) {
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    str[i] == '(' ? count++ : count--;
    if (count < 0) return false;
  }
  return count == 0;
}

void main() {
  print(balanceParanthesis("(())")); // true
  print(balanceParanthesis("(()")); // false
  print(balanceParanthesis("())")); // false
}
