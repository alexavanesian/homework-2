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
  final book = Book('Գիրք', 'Հեղինակ', 120);
  print(book.getinfo());
}
