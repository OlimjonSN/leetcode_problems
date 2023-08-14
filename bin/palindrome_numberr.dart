void main() {
  int x = 12121;
  print(isPalindrome(x));
}

bool isPalindrome(int x) {
  if (x < 0) return false;
  String reversed = x.toString().split('').reversed.join();
  int y = int.parse(reversed);
  if (x == y) {
    return true;
  }
  return false;
}

// bool isPalindrome(int x) {
//   int count = 0;
//   List l = (x.toString()).split('');
//   if (!x.isNegative) {
//     int j = l.length - 1;
//     for (int i = 0; i < l.length ~/ 2; i++) {
//       if (l[i] == l[j]) {
//         count++;
//       }
//       j--;
//     }
//     if (count == l.length ~/ 2) {
//       return true;
//     } else {
//       return false;
//     }
//   } else {
//     return false;
//   }
// }


