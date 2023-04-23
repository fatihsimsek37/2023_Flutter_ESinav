class appData {
  static  final List<Sinav> _sinavlar = [];
  static bool _initiated = false;
  static int currentQuizIndex=0;
  static int currentQuestionIndex=0;
  static const String appName = "E Sınav";

  static List<Sinav> get sinavlar {
    if (!_initiated) _init();
    return _sinavlar;
  }
  static Sinav get activeQuiz{
    return sinavlar[currentQuizIndex];
  }
  static Soru get activeQuestion{
    return sinavlar[currentQuizIndex].sorular[currentQuestionIndex];
  }


  static void _init() {
    _initiated = true;
    for (int sinav_index = 1; sinav_index < 10; sinav_index++) {
      var sinav = Sinav()..adi = "Sınav $sinav_index";
      for (int index = 1; index < 10; index++) {
        sinav.sorular.add(_getSoru(index));
      }
      _sinavlar.add(sinav);
    }
  }

  static Soru _getSoru(int index) {
    var soru = Soru();
    soru.desc = "Soru $index";
    soru.cevap = "Cevap " + ((index % 3) + 1).toString();
    soru.cevaplar.add("Cevap 1");
    soru.cevaplar.add("Cevap 2");
    soru.cevaplar.add("Cevap 3");
    return soru;
  }
}

class Sinav {
  String adi = "";
  final List<Soru> sorular = [];
}

class Soru {
  String desc = "";
  String cevap = "";
  List<String> cevaplar = [];
}
