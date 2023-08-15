void main() {
  String s = 'LVIII';
  print(romanToInt(s));
}

int romanToInt(String s) {
  const Map<String, int> alphabet = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000};
  List l = s.split('');
  int sum = 0;
  for (int i = 0; i < l.length; i++) {
    if (i + 1 < l.length && alphabet[l[i]]! < alphabet[l[i + 1]]!) {
      sum += (alphabet[l[i + 1]]! - alphabet[l[i]]!);
      i++;
    } else {
      sum += alphabet[l[i]]!;
    }
  }
  return sum;
}
