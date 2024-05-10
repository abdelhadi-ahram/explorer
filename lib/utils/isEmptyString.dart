bool isEmptyString(List<String> stringList) {
  return stringList.any((str) => str.trim().isEmpty);
}
