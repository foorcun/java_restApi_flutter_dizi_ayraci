import 'dart:convert';

class DiziModel {
  int? id;
  String? diziName;
  DiziModel({
    this.id,
    this.diziName,
  });

  DiziModel copyWith({
    int? id,
    String? diziName,
  }) {
    return DiziModel(
      id: id ?? this.id,
      diziName: diziName ?? this.diziName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'diziName': diziName,
    };
  }

  factory DiziModel.fromMap(Map<String, dynamic> map) {
    return DiziModel(
      id: map['id']?.toInt(),
      diziName: map['diziName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DiziModel.fromJson(String source) =>
      DiziModel.fromMap(json.decode(source));

  @override
  String toString() => 'DiziModel(id: $id, diziName: $diziName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DiziModel && other.id == id && other.diziName == diziName;
  }

  @override
  int get hashCode => id.hashCode ^ diziName.hashCode;
}
