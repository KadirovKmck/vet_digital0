KatalogModel authFromJson(Map<String, dynamic> docMap) =>
    KatalogModel.fromJson(docMap);

class KatalogModel {
  KatalogModel({
    this.name,
    this.title,
    this.title1,
    this.image,
    this.audio,
  });

  factory KatalogModel.fromJson(Map<String, dynamic> json) {
    return KatalogModel(
      name: json['name'] as String?,
      title: json['title'] as String?,
      title1: json['title1'] as String?,
      image: json['image'] as String?,
      audio: json['audio'] as String?,
    );
  }
  String? name;
  String? title;
  String? title1;
  String? image;
  String? audio;
}
