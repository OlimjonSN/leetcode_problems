void main() {
  String s = '(}[]{}';
  print(isValid(s));
}

bool isValid(String s) {
  List check = [];
  Map codes = {
    '(': ')'.codeUnits.toString(),
    '[': ']'.codeUnits.toString(),
    '{': '}'.codeUnits.toString(),
  };
  if (s.length % 2 != 0) {
    return false;
  } else {
    for (int i = 0; i < s.length; i += 2) {
      if (s[i + 1].codeUnits.toString() == codes[s[i]]) {
        check.add(true);
      } else {
        check.add(false);
      }
    }
  }
  print(check);
  return !check.contains(false);
}
