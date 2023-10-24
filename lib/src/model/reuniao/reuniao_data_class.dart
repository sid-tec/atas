// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

class ReuniaoDataClass {
  int numero;
  int? aprovada;
  bool ordinaria;
  String onde;
  DateTime quando;
  String presidente;
  String? naoChefe;
  List<String> presentes;
  List<String> justificaram;

  ReuniaoDataClass({
    required this.numero,
    this.aprovada,
    required this.ordinaria,
    required this.onde,
    required this.quando,
    required this.presidente,
    this.naoChefe,
    required this.presentes,
    required this.justificaram,
  });

  ReuniaoDataClass copyWith({
    int? numero,
    int? aprovada,
    bool? ordinaria,
    String? onde,
    DateTime? quando,
    String? presidente,
    String? naoChefe,
    List<String>? presentes,
    List<String>? justificaram,
  }) {
    return ReuniaoDataClass(
      numero: numero ?? this.numero,
      aprovada: aprovada ?? this.aprovada,
      ordinaria: ordinaria ?? this.ordinaria,
      onde: onde ?? this.onde,
      quando: quando ?? this.quando,
      presidente: presidente ?? this.presidente,
      naoChefe: naoChefe ?? this.naoChefe,
      presentes: presentes ?? this.presentes,
      justificaram: justificaram ?? this.justificaram,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numero': numero,
      'aprovada': aprovada,
      'ordinaria': ordinaria,
      'onde': onde,
      'quando': quando.millisecondsSinceEpoch,
      'presidente': presidente,
      'naoChefe': naoChefe,
      'presentes': presentes,
      'justificaram': justificaram,
    };
  }

  factory ReuniaoDataClass.fromMap(Map<String, dynamic> map) {
    return ReuniaoDataClass(
      numero: map['numero'] as int,
      aprovada: map['aprovada'] != null ? map['aprovada'] as int : null,
      ordinaria: map['ordinaria'] as bool,
      onde: map['onde'] as String,
      quando: DateTime.fromMillisecondsSinceEpoch(map['quando'] as int),
      presidente: map['presidente'] as String,
      naoChefe: map['naoChefe'] != null ? map['naoChefe'] as String : null,
      presentes: List<String>.from((map['presentes'] as List<String>)),
      justificaram: List<String>.from((map['justificaram'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory ReuniaoDataClass.fromJson(String source) =>
      ReuniaoDataClass.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReuniaoDataClass(numero: $numero, aprovada: $aprovada, ordinaria: $ordinaria, onde: $onde, quando: $quando, presidente: $presidente, naoChefe: $naoChefe, presentes: $presentes, justificaram: $justificaram)';
  }

  @override
  bool operator ==(covariant ReuniaoDataClass other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.numero == numero &&
        other.aprovada == aprovada &&
        other.ordinaria == ordinaria &&
        other.onde == onde &&
        other.quando == quando &&
        other.presidente == presidente &&
        other.naoChefe == naoChefe &&
        listEquals(other.presentes, presentes) &&
        listEquals(other.justificaram, justificaram);
  }

  @override
  int get hashCode {
    return numero.hashCode ^
        aprovada.hashCode ^
        ordinaria.hashCode ^
        onde.hashCode ^
        quando.hashCode ^
        presidente.hashCode ^
        naoChefe.hashCode ^
        presentes.hashCode ^
        justificaram.hashCode;
  }
}
