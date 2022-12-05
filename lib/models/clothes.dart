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
        codeP: json['code'] != null ? json['code'] : 'no data',
        nameP: json['name'] != null ? json['name'] : 'no data',
        priceP: json['whitePrice']['formattedValue'] != null
            ? json['whitePrice']['formattedValue']
            : 'no data',
        colourP:
            json['color']['text'] != null ? json['color']['text'] : 'no data',
        article: json['genArticle'] != null ? json['genArticle'] : 'no data',
        imageOneP: json['images'][0]['url'] != null
            ? json['images'][0]['url']
            : 'no data');
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
