import 'reuniao_interface.dart';
import 'reuniao_data_class.dart';

class Reuniao implements ReuniaoInterface {
  ReuniaoDataClass dados;
  Reuniao(this.dados);

  @override
  int? get aprovada => dados.aprovada;

  @override
  List<String>? get justificaram => dados.justificaram;

  @override
  String? get naoChefe => dados.naoChefe;

  @override
  int get numero => dados.numero;

  @override
  String get onde => dados.onde;

  @override
  bool get ordinaria => dados.ordinaria;

  @override
  List<String> get presentes => dados.presentes;

  @override
  String get presidente => dados.presidente;

  @override
  DateTime get quando => dados.quando;
}
