// ignore: strict_raw_type
VetModel authFromJson(Map docMap) =>
    VetModel.fromJson(docMap as Map<String, dynamic>);

class VetModel {
  VetModel({
    this.name,
    this.history,
    this.veter,
    this.veterinaria,
  });

  factory VetModel.fromJson(Map<String, dynamic> json) => VetModel(
        name: json['name'] as String?,
        history: json['history'] as String?,
        veter: json['veter'] as String?,
        veterinaria: json['veterinaria'] as String?,
      );
  String? name;
  String? history;
  String? veter;
  String? veterinaria;
}
