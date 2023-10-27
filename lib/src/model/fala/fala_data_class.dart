// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

class FalaDataClass {
  int id;
  int itemId;
  int reuniaoId;
  List<String> quem;
  String texto;
  List<int> votos;
  FalaDataClass({
    required this.id,
    required this.itemId,
    required this.reuniaoId,
    required this.quem,
    required this.texto,
    required this.votos,
  });

  FalaDataClass copyWith({
    int? id,
    int? itemId,
    int? reuniaoId,
    List<String>? quem,
    String? texto,
    List<int>? votos,
  }) {
    return FalaDataClass(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      reuniaoId: reuniaoId ?? this.reuniaoId,
      quem: quem ?? this.quem,
      texto: texto ?? this.texto,
      votos: votos ?? this.votos,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'itemId': itemId,
      'reuniaoId': reuniaoId,
      'quem': quem,
      'texto': texto,
      'votos': votos,
    };
  }

  factory FalaDataClass.fromMap(Map<String, dynamic> map) {
    return FalaDataClass(
      id: map['id'] as int,
      itemId: map['itemId'] as int,
      reuniaoId: map['reuniaoId'] as int,
      quem: List<String>.from((map['quem'] as List<String>)),
      texto: map['texto'] as String,
      votos: List<int>.from((map['votos'] as List<int>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory FalaDataClass.fromJson(String source) =>
      FalaDataClass.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FalaDataClass(id: $id, itemId: $itemId, reuniaoId: $reuniaoId, quem: $quem, texto: $texto, votos: $votos)';
  }

  @override
  bool operator ==(covariant FalaDataClass other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id &&
        other.itemId == itemId &&
        other.reuniaoId == reuniaoId &&
        listEquals(other.quem, quem) &&
        other.texto == texto &&
        listEquals(other.votos, votos);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        itemId.hashCode ^
        reuniaoId.hashCode ^
        quem.hashCode ^
        texto.hashCode ^
        votos.hashCode;
  }
}
