import 'votacao.dart';

class VotacaoImplement implements Votacao {
  //
  final List<int> votos;
  //
  VotacaoImplement(this.votos);

  @override
  int get favor => votos.isEmpty ? 0 : votos.first;

  @override
  int get contra => votos.length < 2 ? 0 : votos.elementAt(1);

  @override
  int get absten => votos.length < 3 ? 0 : votos.elementAt(2);

  @override
  String resultado() {
    var r = ' A plenário votou e o a proposta foi ';
    r += favor > contra ? 'aprovada' : 'reprovada';
    r += contra == 0 && absten == 0 ? ' por unanimidade.' : ' com ${_apura()}';
    return r;
  }

  String _apura() {
    var r = '$favor votos a favor, ';
    r += '$contra votos contra e ';
    r += '$absten abstenções.';
    return r;
  }
}
