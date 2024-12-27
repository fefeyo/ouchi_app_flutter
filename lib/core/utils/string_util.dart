extension StringExt on String {
  bool convertStringToBool() {
    if (toUpperCase() == "TRUE") {
      return true;
    } else if (toUpperCase() == "FALSE") {
      return false;
    }
    return false;
  }
}
