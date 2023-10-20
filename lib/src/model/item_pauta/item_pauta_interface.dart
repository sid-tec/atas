abstract class ItemPautaInterface {
  int get reuniao;

  int get numero;

  String get titulo;

  String get descricao;

  int? get aprovada;

  bool get ordinaria;
  String get onde;
  DateTime get quando;

  String get presidente;
  String? get naoChefe;

  List<String> get presentes;
  List<String>? get justificaram;
}
