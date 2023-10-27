import '../servidor/servidor.dart';
import '../servidor/servidor_repository.dart';
import '../votacao/votacao.dart';
import '../votacao/votacao_implement.dart';
import 'fala.dart';
import 'fala_data_class.dart';

class FalaImplement implements Fala {
  //
  FalaDataClass fala;
  //
  FalaImplement(this.fala);

  @override
  List<Servidor> get quem => ServidorRepository.servidores(fala.quem);

  @override
  String get texto => fala.texto;

  @override
  Votacao get votacao => VotacaoImplement(fala.votos);
}
