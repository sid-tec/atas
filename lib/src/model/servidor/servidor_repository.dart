import 'servidor.dart';
import 'servidor_data_class.dart';
import 'servidor_implement.dart';
import 'servidores.dart';

class ServidorRepository {
  static List<Servidor> servidores(List<String> quem) {
    final servList = <Servidor>[];
    for (var serv in Servidores.byKeys(quem)) {
      servList.add(
        ServidorImplement(
          ServidorDataClass.fromMap({
            'key': serv.key,
            'nome': serv.nome,
            'curto': serv.curto,
            'siape': serv.siape,
            'cpf': serv.cpf,
            'celular': serv.celular,
            'email': serv.email,
            'sala': serv.sala,
            'masculino': serv.masculino,
            'professor': serv.professor,
            'ativo': serv.ativo,
          }),
        ),
      );
    }
    return servList;
  }
}
