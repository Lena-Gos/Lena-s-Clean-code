class Book {
  String title;
  String author;
  int publicationYear;

  Book(this.title, this.author, this.publicationYear);
  void showBookInfo() {
    print(
        "Book: {title: '${title}', author: '${author}', publicationYear: ${publicationYear}}");
  }
}
