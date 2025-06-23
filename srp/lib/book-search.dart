import 'package:srp/book.dart';

class BookSearch {
  final List<Book> books;
  BookSearch(this.books);
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

  List<Book> getBooksByAuthor(String author) {
    List<Book> result = [];
    for (Book book in books) {
      if (book.author == author) {
        result.add(book);
      }
    }
    return result;
  }

  Book? getBookByPublicationYear(int publicationYear) {
    int index =
        books.indexWhere((book) => book.publicationYear == publicationYear);
    if (index == -1) return null;
    return books[index];
  }

  List<Book> getBooksByPublicationYear(int publicationYear) {
    List<Book> result = [];
    for (Book book in books) {
      if (book.publicationYear == publicationYear) {
        result.add(book);
      }
    }
    return result;
  }
}
