List<double> convertToF(List<double> temperaturesInC) {
  List<double> newList = [];
  temperaturesInC
      .map((e) =>
          {newList.add(double.parse(((e * 9 / 5) + 32).toStringAsFixed(2)))})
      .toList();
  return newList;
}
