void main() {
  List<String> sentences = [
    "this is a test this is",
    "hello hello world",
    "dart is fun fun fun"
  ];

  print("Highest frequency word(s) per line:\n");

  for (int i = 0; i < sentences.length; i++) {
    String line = sentences[i];
    List<String> words = line.split(' ');

    Map<String, int> frequencyMap = {};

    for (var word in words) {
      frequencyMap[word] = (frequencyMap[word] ?? 0) + 1;
    }

    int maxFrequency =
        frequencyMap.values.reduce((a, b) => a > b ? a : b);

    List<String> highestWords = frequencyMap.entries
        .where((entry) => entry.value == maxFrequency)
        .map((entry) => entry.key)
        .toList();

    print("Line ${i + 1}: $highestWords (appears $maxFrequency times)");
  }

}

// Jagmohan Dass 
// 2380232
// BSSE-6D
