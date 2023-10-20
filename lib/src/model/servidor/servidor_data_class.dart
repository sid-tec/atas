// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ServidorDataClass {
  //
  String key;
  String nome;
  String curto;
  //
  String siape;
  int cpf;
  int celular;
  String email;
  String sala;
  //
  bool masculino;
  bool professor;
  bool ativo;

  ServidorDataClass({
    required this.key,
    required this.nome,
    required this.curto,
    required this.siape,
    required this.cpf,
    required this.celular,
    required this.email,
    required this.sala,
    required this.masculino,
    required this.professor,
    required this.ativo,
  });

  ServidorDataClass copyWith({
    String? key,
    String? nome,
    String? curto,
    String? siape,
    int? cpf,
    int? celular,
    String? email,
    String? sala,
    bool? masculino,
    bool? professor,
    bool? ativo,
  }) {
    return ServidorDataClass(
      key: key ?? this.key,
      nome: nome ?? this.nome,
      curto: curto ?? this.curto,
      siape: siape ?? this.siape,
      cpf: cpf ?? this.cpf,
      celular: celular ?? this.celular,
      email: email ?? this.email,
      sala: sala ?? this.sala,
      masculino: masculino ?? this.masculino,
      professor: professor ?? this.professor,
      ativo: ativo ?? this.ativo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'nome': nome,
      'curto': curto,
      'siape': siape,
      'cpf': cpf,
      'celular': celular,
      'email': email,
      'sala': sala,
      'masculino': masculino,
      'professor': professor,
      'ativo': ativo,
    };
  }

  factory ServidorDataClass.fromMap(Map<String, dynamic> map) {
    return ServidorDataClass(
      key: map['key'] as String,
      nome: map['nome'] as String,
      curto: map['curto'] as String,
      siape: map['siape'] as String,
      cpf: map['cpf'] as int,
      celular: map['celular'] as int,
      email: map['email'] as String,
      sala: map['sala'] as String,
      masculino: map['masculino'] as bool,
      professor: map['professor'] as bool,
      ativo: map['ativo'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory ServidorDataClass.fromJson(String source) =>
      ServidorDataClass.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ServidorDataClass(key: $key, nome: $nome, curto: $curto, siape: $siape, cpf: $cpf, celular: $celular, email: $email, sala: $sala, masculino: $masculino, professor: $professor, ativo: $ativo)';
  }

  @override
  bool operator ==(covariant ServidorDataClass other) {
    if (identical(this, other)) return true;

    return other.key == key &&
        other.nome == nome &&
        other.curto == curto &&
        other.siape == siape &&
        other.cpf == cpf &&
        other.celular == celular &&
        other.email == email &&
        other.sala == sala &&
        other.masculino == masculino &&
        other.professor == professor &&
        other.ativo == ativo;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        nome.hashCode ^
        curto.hashCode ^
        siape.hashCode ^
        cpf.hashCode ^
        celular.hashCode ^
        email.hashCode ^
        sala.hashCode ^
        masculino.hashCode ^
        professor.hashCode ^
        ativo.hashCode;
  }
}
