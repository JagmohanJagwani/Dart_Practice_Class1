void main() {
  List<String> sentences = [
    "this is a test this is",
    "hello hello world",
    "dart is fun fun fun"
  ];

  for (int i = 0; i < sentences.length; i++) {
    String line = sentences[i];
    List<String> words = line.split(' ');

    Map<String, int> frequencyMap = {};

    for (var word in words) {
      frequencyMap[word] = (frequencyMap[word] ?? 0) + 1;
    }

    int maxFrequency = frequencyMap.values.reduce((a, b) => a > b ? a : b);

    List<String> highestWords = frequencyMap.entries
        .where((entry) => entry.value == maxFrequency)
        .map((entry) => entry.key)
        .toList();

    print('The following words have the highest word frequency per line:');
    print('$highestWords (appears in line #${i + 1})\n');
  }
}
