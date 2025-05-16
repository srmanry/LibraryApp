class BookModel {
  final String id;
  final String name;
  final String writer;
  final String category;
  final String coverUrl;
  final String pdfUrl;

  BookModel({
    required this.id,
    required this.name,
    required this.writer,
    required this.category,
    required this.coverUrl,
    required this.pdfUrl,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'writer': writer,
    'category': category,
    'coverUrl': coverUrl,
    'pdfUrl': pdfUrl,
  };
}
