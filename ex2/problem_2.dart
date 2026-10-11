class Book {
  final String title;
  final String author;
  final int pages;

  Book(this.title, this.author, this.pages);

  String getinfo() {
    return '$title by $author, $pages pages';
  }

  String getInfo() => getinfo();
}

void main() {
  final book1 = Book('1984', 'George Orwell', 328);
  final book2 = Book('The Hobbit', 'J.R.R. Tolkien', 310);

  print(book1.getinfo());
  print(book2.getinfo());
}
