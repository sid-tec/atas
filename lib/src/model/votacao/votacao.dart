abstract interface class Votacao {
  String get id;
  int get favor;
  int get contra;
  int get absten;
  String resultado();
}
