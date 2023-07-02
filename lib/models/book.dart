class Book {
  final String imagepic;
  final String text1;
  final String text2;

  const Book({
    required this.imagepic,
    required this.text1,
    required this.text2,
    
  });
}

List<Book> bookList = [
  Book(
    imagepic: 'assets/english/slauter.jpg',
    text1: 'Slaughter',
    text2: 'Ryan & Albert',
  ),
  Book(
    imagepic: 'assets/english/bts.jpg',
    text1: 'BTS Army',
    text2: 'Bts',
  ),
  Book(
    imagepic: 'assets/english/heart.jpg',
    text1: 'Heart of Happiness',
    text2: 'Dalai Lama',
  ),
  Book(
    imagepic: 'assets/english/smarter.jpg',
    text1: 'The Power of Habit',
    text2: 'Charles Duhigg',
  ),
  Book(
    imagepic: 'assets/english/magic.jpg',
    text1: 'Magic of Thinking',
    text2: 'Mark Swartz',
  ),
  Book(
    imagepic: 'assets/english/subtle.jpg',
    text1: 'The Subtle Art',
    text2: 'Mark Manson',
  ),
  Book(
    imagepic: 'assets/english/subtle.jpg',
    text1: 'The Subtle Art',
    text2: 'Mark Manson',
  ),
];
