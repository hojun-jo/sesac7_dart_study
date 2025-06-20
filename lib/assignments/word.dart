class Word {
  static const vowels = ['a', 'e', 'i', 'o', 'u'];

  final String _word;

  Word(String word) : _word = word;

  bool isVowel(int i) {
    if (i >= _word.length) {
      throw Exception('인덱스는 글자 길이보다 작은 값이 필요합니다.');
    }

    final target = _word.toLowerCase().substring(i, i + 1);
    return vowels.contains(target);
  }

  bool isConsonant(int i) {
    return !isVowel(i);
  }
}
