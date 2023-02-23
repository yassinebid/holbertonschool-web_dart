bool isPalindrome(String s) {
  if (s.length < 3) return false;
  int high = s.length - 1;
  for (int low = 0; low < high; low++, high--) {
    if (s[low] == s[high])
      continue;
    else
      return false;
  }
  return true;
}
