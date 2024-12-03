void main() {
  // Original string with rows separated by // and columns separated by &
  final String inputString = "1 & 2 & 3 & 4 // 1 & 2 & 3 & 4";

  // First split the string into rows
  List<String> rows = inputString.split("//");
  
  // Create empty list to store the final result
  List<List<String>> result = [];
  
  // For each row, split it into columns
  for (String row in rows) {
    List<String> columns = row.split("&");
    result.add(columns);
  }

  // Print the resulting 2D list
  print(result);
}