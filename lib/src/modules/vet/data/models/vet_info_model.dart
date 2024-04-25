VetInfoModel authFromJson(Map<String, dynamic> docMap) =>
    VetInfoModel.fromJson(docMap);

class VetInfoModel {
  VetInfoModel({
    this.name,
    this.name2,
    this.title,
    this.title1,
    this.image,
  });

  factory VetInfoModel.fromJson(Map<String, dynamic> json) {
    return VetInfoModel(
      name: json['name'] as String?,
      name2: json['name2'] as String?,
      title: json['title'] as String?,
      title1: json['title1'] as String?,
      image: json['image'] as String?,
    );
  }
  String? name;
  String? name2;
  String? title;
  String? title1;
  String? image;
}
