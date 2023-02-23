import '9-palindrome.dart';

String longestPalindrome(String s) {
  List<String> listPalindrome = [];
  for (int low = 0; low < s.length; low++) {
    if (isPalindrome(s.substring(low, s.length))) {
      listPalindrome.add(s.substring(low, s.length));
    }
  }
  for (int higt = s.length - 1; higt > 0; higt--) {
    if (isPalindrome(s.substring(0, higt))) {
      listPalindrome.add(s.substring(0, higt));
    }
  }
  int longindex = 0;
  if (listPalindrome.isEmpty)
    return "none";
  else if (listPalindrome.length == 1) return listPalindrome[0];
  for (int i = 0; i < listPalindrome.length; i++) {
    if (listPalindrome[i].length > longindex) longindex = i;
  }
  return listPalindrome[longindex];
}
