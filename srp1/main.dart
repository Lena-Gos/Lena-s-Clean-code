import 'book.dart';
import 'library.dart';

void main() {
  Library lib = new Library();

  Book book1 = new Book('Clean code', 'Edric Cao', 2023);

  Book book2 = new Book('Design Pattern', 'Edric Cao', 2022);

  lib.addBook(book1);
  lib.addBook(book2);
  lib.getBookByTitle('Clean code')?.showBookInfo();
}
