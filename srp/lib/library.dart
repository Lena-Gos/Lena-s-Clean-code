import 'book.dart';

class Library {
  List<Book> books;

  Library() : books = [];
  void addBook(Book book) {
    books.add(book);
  }

  List<Book> getListBooks() {
    return books;
  }

  void removeBook(String title) {
    books.removeWhere((book) => book.title == title);
  }
}
