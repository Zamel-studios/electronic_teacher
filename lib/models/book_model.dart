enum BookTypeEn { READ_BOOK, SOLUTION_BOOK, QUIZES_BOOK }

class BookModel {
  late final String book_path;
  late final String book_name;
  late final BookTypeEn book_type;

  BookModel(String book_path, String book_name, BookTypeEn book_type) {
    this.book_path = book_path;
    this.book_name = book_name;
    this.book_type = book_type;
  }
}
