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

  Book? getBookByTitle(String title) {
    int index = books.indexWhere((book) => book.title == title);
    if (index == -1) return null;
    return books[index];
  }

  int getTotalNumberOfBooks() {
    return books.length;
  }

  Book? getBookByAuthor(String author) {
    int index = books.indexWhere((book) => book.author == author);
    if (index == -1) return null;
    return books[index];
  }

  Book? getBookByPublicationYear(int publicationYear) {
    int index =
        books.indexWhere((book) => book.publicationYear == publicationYear);
    if (index == -1) return null;
    return books[index];
  }
}
