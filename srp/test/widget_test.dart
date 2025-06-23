import 'package:flutter_test/flutter_test.dart';
import 'package:srp/book-search.dart';
import 'package:srp/book.dart';
import 'package:srp/library.dart';

void main() {
  group('Library', () {
    Library library = new Library();
    Book book1 = new Book('Clean Code', 'Edric Cao', 2023);
    Book book2 = new Book('Design Pattern', 'Edric Cao', 2022);

    test('TC1: should add a book to the library', () {
      library.addBook(book1);
      library.removeBook('Clean Code');
      expect(library.getListBooks(), contains(book1));
    });
    test('TC2: should remove a book by title from the library', () {
      library.addBook(book1);
      library.addBook(book2);
      library.removeBook('Clean Code');
      expect(library.getListBooks(), isNot(contains(book1)));
      expect(library.getListBooks(), contains(book2));
    });

    test('TC3: should not remove any book if title not found', () {
      library.addBook(book1);
      library.removeBook('Nonexistent Book');
      expect(library.getListBooks().length, equals(1));
      expect(library.getListBooks(), contains(book1));
    });

    test('TC4: should return the total number of books in the library', () {
      library.addBook(book1);
      library.addBook(book2);
      expect(library.getListBooks().length, equals(2));
    });

    test('TC5: should return an empty list when no books are added', () {
      expect(library.getListBooks().length, equals(0));
    });
  });

  group('BookSearch', () {
    List<Book> books = [
      new Book('Clean Code', 'Edric Cao', 2023),
      new Book('Design Pattern', 'Edric Cao', 2022),
      new Book('Refactoring', 'Martin Fowler', 2018),
    ];
    BookSearch search = new BookSearch(books);

    test('TC1: should find a book by title', () {
      Book? book = search.getBookByTitle('Clean Code');
      expect(book, isNotNull);
      expect(book?.author, equals('Edric Cao'));
    });

    test('TC2: should return undefined when no book matches the title', () {
      final book = search.getBookByTitle('Nonexistent Book');
      expect(book, isNull);
    });

    test('TC3: should return books by author', () {
      final authorBooks = search.getBooksByAuthor('Edric Cao');
      expect(authorBooks.length, 2);
      final titles = authorBooks.map((item) => item.title).toList();
      expect(titles, containsAll(['Clean Code', 'Design Pattern']));
    });

    test('TC4: should return an empty array when no books match the author',
        () {
      final authorBooks = search.getBooksByAuthor('Unknown Author');
      expect(authorBooks.length, equals(0));
    });

    test('TC5: should return books by publication year', () {
      final booksByYear = search.getBooksByPublicationYear(2022);
      expect(booksByYear.length, equals(1));
      expect(booksByYear[0].title, equals('Design Pattern'));
    });

    test(
        'TC6: should return an empty array when no books match the publication year',
        () {
      final booksByYear = search.getBooksByPublicationYear(1999);
      expect(booksByYear.length, equals(0));
    });
  });
}
