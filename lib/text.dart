class TextStorage {
  static const List<String> texts = [
    'Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.',
    'Agrizy was founded in 2021 by Vicky Dodani and Saket Chirania to provide an end-to-end solution to the agri processing market.'
  ];

  static String getTextByIndex(int index) {
    return index >= 0 && index < texts.length ? texts[index] : 'Invalid Index';
  }
}
