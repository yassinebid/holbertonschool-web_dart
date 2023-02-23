String longestUniqueSubstring(String str) {
  List<String> listSubstring = [];
  int numSubstring = 0;
  for (int i = 0; i < str.length; i++) {
    if (i == 0) {
      listSubstring.add(str[i]);
    } else {
      if (!listSubstring[numSubstring].contains(str[i])) {
        listSubstring[numSubstring] = listSubstring[numSubstring] + str[i];
      } else {
        numSubstring++;
        listSubstring.add(str[i]);
      }
    }
  }

  int indexLong = 0;
  for (int i = 0; i < listSubstring.length; i++) {
    if (listSubstring[i].length > indexLong) indexLong = i;
  }

  return listSubstring[indexLong];
}
