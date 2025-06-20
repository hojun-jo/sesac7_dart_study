class Word {
  static const vowels = ['a', 'e', 'i', 'o', 'u'];

  String word = '';

  bool isVowel(int i) {
    return vowels.contains(word.substring(i, i + 1));
  }

  bool isConsonant(int i) {
    return !isVowel(i);
  }
}
