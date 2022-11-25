class Clothes {
  final String codeP;
  final String nameP;
  final String colourP;
  final String priceP;
  final String article;
  final String imageOneP;

  Clothes(
      {required this.codeP,
      required this.nameP,
      required this.colourP,
      required this.priceP,
      required this.article,
      required this.imageOneP});

  factory Clothes.fromJson(dynamic json) {
    return Clothes(
        codeP: json['code'] as String,
        nameP: json['name'] as String,
        priceP: json['whitePrice']['formattedValue'] as String,
        colourP: json['color']['text'] as String,
        article: json['genArticle'] as String,
        imageOneP: json['images'][0]['url'] as String);
  }

  static List<Clothes> clothesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Clothes.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return "Clothes {nameProduct: $nameP, colour: $colourP, price: $priceP, imageOne: $imageOneP, code: $codeP,}";
  }
}
