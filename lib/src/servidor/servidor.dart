import 'servidor_data_class.dart';

import 'servidor_interface.dart';

class Servidor implements ServidorInterface {
  ServidorDataClass servidor;

  Servidor(this.servidor);

  @override
  int get celular => servidor.celular;

  @override
  int get cpf => servidor.cpf;

  @override
  String get curto => servidor.curto;

  @override
  String get email => servidor.email;

  @override
  String get key => servidor.key;

  @override
  bool get masculino => servidor.masculino;

  @override
  String get nome => servidor.nome;

  @override
  bool get professor => servidor.professor;

  @override
  String get sala => servidor.sala;

  @override
  String get siape => servidor.siape;

  @override
  bool get ativo => servidor.ativo;

  @override
  String pronome() => masculino ? 'o' : 'a';

  @override
  String titulo() => professor
      ? masculino
          ? 'professor'
          : 'professora'
      : masculino
          ? 'tecnico'
          : 'tecnica';
}
