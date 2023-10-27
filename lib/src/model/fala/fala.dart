import '../servidor/servidor.dart';
import '../votacao/votacao.dart';

abstract interface class Fala {
  List<Servidor> get quem;
  String get texto;
  Votacao get votacao;
}
