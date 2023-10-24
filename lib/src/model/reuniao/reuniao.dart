abstract interface class Reuniao {
  int get numero;
  int? get aprovada;

  bool get ordinaria;
  String get onde;
  DateTime get quando;

  String get presidente;
  String? get naoChefe;

  List<String> get presentes;
  List<String> get justificaram;
}
