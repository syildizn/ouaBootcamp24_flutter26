import 'dart:async';

import 'package:flutter/material.dart';
import 'model.dart';

class WordViewModel extends ChangeNotifier {
  final List<WordModel> _cities = [
    WordModel(name: 'Tokyo', hint: 'Dünyanın en kalabalık şehri.'),
    WordModel(name: 'Delhi', hint: 'Hindistan\'ın başkenti.'),
    WordModel(name: 'Shanghai', hint: 'Çin\'in en büyük şehri.'),
    WordModel(name: 'São Paulo', hint: 'Brezilya\'nın en kalabalık şehri.'),
    WordModel(name: 'Mexico City', hint: 'Meksika\'nın başkenti.'),
    WordModel(name: 'Cairo', hint: 'Mısır\'ın başkenti.'),
    WordModel(name: 'Mumbai', hint: 'Hindistan\'ın finans merkezi.'),
    WordModel(name: 'Beijing', hint: 'Çin\'in başkenti.'),
    WordModel(name: 'Dhaka', hint: 'Bangladeş\'in başkenti.'),
    WordModel(name: 'Osaka', hint: 'Japonya\'nın ikinci büyük metropolü.'),
    WordModel(name: 'New York', hint: 'ABD\'nin en kalabalık şehri.'),
    WordModel(name: 'Karachi', hint: 'Pakistan\'ın en büyük şehri.'),
    WordModel(name: 'Buenos Aires', hint: 'Arjantin\'in başkenti.'),
    WordModel(name: 'Chongqing', hint: 'Çin\'in büyük bir metropolü.'),
    WordModel(name: 'Istanbul', hint: 'Türkiye\'nin en kalabalık şehri.'),
    WordModel(name: 'Rio de Janeiro', hint: 'Brezilya\'nın ünlü turistik şehri.'),
    WordModel(name: 'Lagos', hint: 'Nijerya\'nın en büyük şehri.'),
    WordModel(name: 'Manila', hint: 'Filipinler\'in başkenti.'),
    WordModel(name: 'Guangzhou', hint: 'Çin\'in önemli bir ticaret merkezi.'),
    WordModel(name: 'Los Angeles', hint: 'ABD\'nin batı kıyısındaki büyük şehir.'),
    WordModel(name: 'Moscow', hint: 'Rusya\'nın başkenti.'),
    WordModel(name: 'Kinshasa', hint: 'Demokratik Kongo Cumhuriyeti\'nin başkenti.'),
    WordModel(name: 'Tianjin', hint: 'Çin\'in büyük şehirlerinden biri.'),
    WordModel(name: 'Paris', hint: 'Fransa\'nın başkenti.'),
    WordModel(name: 'Lima', hint: 'Peru\'nun başkenti.'),
    WordModel(name: 'Bangkok', hint: 'Tayland\'ın başkenti.'),
    WordModel(name: 'London', hint: 'İngiltere\'nin başkenti.'),
    WordModel(name: 'Bangalore', hint: 'Hindistan\'ın teknoloji merkezi.'),
    WordModel(name: 'Jakarta', hint: 'Endonezya\'nın başkenti.'),
    WordModel(name: 'Chennai', hint: 'Hindistan\'ın güneydoğusunda önemli bir şehir.'),
    WordModel(name: 'Bogota', hint: 'Kolombiya\'nın başkenti.'),
    WordModel(name: 'Hyderabad', hint: 'Hindistan\'ın güneyinde büyük bir şehir.'),
    WordModel(name: 'Lahore', hint: 'Pakistan\'ın kültürel başkenti.'),
    WordModel(name: 'Chengdu', hint: 'Çin\'in batısındaki büyük şehir.'),
    WordModel(name: 'Nagoya', hint: 'Japonya\'nın önemli bir sanayi merkezi.'),
    WordModel(name: 'Tehran', hint: 'İran\'ın başkenti.'),
    WordModel(name: 'Chicago', hint: 'ABD\'nin üçüncü büyük şehri.'),
    WordModel(name: 'Ho Chi Minh City', hint: 'Vietnam\'ın en büyük şehri.'),
    WordModel(name: 'Shenzhen', hint: 'Çin\'in teknoloji merkezi.'),
    WordModel(name: 'Wuhan', hint: 'Çin\'in ortasındaki büyük şehir.'),
    WordModel(name: 'Hangzhou', hint: 'Çin\'in doğusunda büyük bir şehir.'),
    WordModel(name: 'Hong Kong', hint: 'Çin\'in özel yönetim bölgesi.'),
    WordModel(name: 'Ahmedabad', hint: 'Hindistan\'ın batısında büyük bir şehir.'),
    WordModel(name: 'Kuala Lumpur', hint: 'Malezya\'nın başkenti.'),
    WordModel(name: 'Alexandria', hint: 'Mısır\'ın tarihi şehri.'),
    WordModel(name: 'Shenyang', hint: 'Çin\'in kuzeydoğusunda büyük bir şehir.'),
    WordModel(name: 'Riyadh', hint: 'Suudi Arabistan\'ın başkenti.'),
    WordModel(name: 'Baghdad', hint: 'Irak\'ın başkenti.'),
    WordModel(name: 'Santiago', hint: 'Şili\'nin başkenti.'),
    WordModel(name: 'Saint Petersburg', hint: 'Rusya\'nın önemli kültürel merkezi.'),
    WordModel(name: 'Surat', hint: 'Hindistan\'ın hızlı büyüyen şehirlerinden biri.'),
    WordModel(name: 'Madrid', hint: 'İspanya\'nın başkenti.'),
    WordModel(name: 'Suzhou', hint: 'Çin\'in doğusunda büyük bir şehir.'),
    WordModel(name: 'Pune', hint: 'Hindistan\'ın batısında büyük bir şehir.'),
    WordModel(name: 'Harbin', hint: 'Çin\'in kuzeydoğusunda büyük bir şehir.'),
    WordModel(name: 'Houston', hint: 'ABD\'nin büyük şehirlerinden biri.'),
    WordModel(name: 'Dallas', hint: 'ABD\'nin Teksas eyaletinde büyük bir şehir.'),
    WordModel(name: 'Toronto', hint: 'Kanada\'nın en büyük şehri.'),
    WordModel(name: 'Dar es Salaam', hint: 'Tanzanya\'nın en büyük şehri.'),
    WordModel(name: 'Miami', hint: 'ABD\'nin güneydoğusunda önemli bir şehir.'),
    WordModel(name: 'Singapore', hint: 'Güneydoğu Asya\'da şehir devleti.'),
    WordModel(name: 'Philadelphia', hint: 'ABD\'nin tarihi şehirlerinden biri.'),
    WordModel(name: 'Atlanta', hint: 'ABD\'nin güneydoğusunda büyük bir şehir.'),
    WordModel(name: 'Khartoum', hint: 'Sudan\'ın başkenti.'),
    WordModel(name: 'Barcelona', hint: 'İspanya\'nın turistik şehri.'),
    WordModel(name: 'Sydney', hint: 'Avustralya\'nın en büyük şehri.'),
    WordModel(name: 'Washington D.C.', hint: 'ABD\'nin başkenti.'),
    WordModel(name: 'Abidjan', hint: 'Fildişi Sahili\'nin en büyük şehri.'),
    WordModel(name: 'San Francisco', hint: 'ABD\'nin batı kıyısındaki büyük şehir.'),
    WordModel(name: 'Berlin', hint: 'Almanya\'nın başkenti.'),
    WordModel(name: 'Boston', hint: 'ABD\'nin doğusunda önemli bir şehir.'),
    WordModel(name: 'Phoenix', hint: 'ABD\'nin Arizona eyaletinde büyük bir şehir.'),
    WordModel(name: 'Montreal', hint: 'Kanada\'nın büyük şehirlerinden biri.'),
    WordModel(name: 'Medellin', hint: 'Kolombiya\'nın önemli bir şehri.'),
    WordModel(name: 'Melbourne', hint: 'Avustralya\'nın güneydoğusunda büyük bir şehir.'),
    WordModel(name: 'Johannesburg', hint: 'Güney Afrika\'nın en büyük şehri.'),
    WordModel(name: 'Nanjing', hint: 'Çin\'in doğusunda büyük bir şehir.'),
    WordModel(name: 'Cape Town', hint: 'Güney Afrika\'nın turistik şehri.'),
    WordModel(name: 'Yokohama', hint: 'Japonya\'nın büyük liman şehirlerinden biri.'),
    WordModel(name: 'Recife', hint: 'Brezilya\'nın kuzeydoğusunda büyük bir şehir.'),
    WordModel(name: 'Seattle', hint: 'ABD\'nin kuzeybatısında büyük bir şehir.'),
    WordModel(name: 'Munich', hint: 'Almanya\'nın güneyinde büyük bir şehir.'),
    WordModel(name: 'Lisbon', hint: 'Portekiz\'in başkenti.'),
    WordModel(name: 'Fukuoka', hint: 'Japonya\'nın güneyinde büyük bir şehir.'),
    WordModel(name: 'Ankara', hint: 'Türkiye\'nin başkenti.'),
    WordModel(name: 'Izmir', hint: 'Türkiye\'nin ve Dünya\'nın en güzel şehri.'),
    WordModel(name: 'Salvador', hint: 'Brezilya\'nın kuzeydoğusunda önemli bir şehir.'),
    WordModel(name: 'Brasilia', hint: 'Brezilya\'nın başkenti.'),
    WordModel(name: 'Curitiba', hint: 'Brezilya\'nın güneyinde büyük bir şehir.'),
    WordModel(name: 'Fortaleza', hint: 'Brezilya\'nın kuzeydoğusunda büyük bir şehir.'),
    WordModel(name: 'Porto Alegre', hint: 'Brezilya\'nın güneyinde önemli bir şehir.'),
    WordModel(name: 'Valencia', hint: 'İspanya\'nın doğusunda büyük bir şehir.'),
    WordModel(name: 'Campinas', hint: 'Brezilya\'nın güneydoğusunda büyük bir şehir.'),
    WordModel(name: 'Florianopolis', hint: 'Brezilya\'nın güneyinde önemli bir şehir.'),
    WordModel(name: 'Manaus', hint: 'Brezilya\'nın kuzeyinde büyük bir şehir.'),
    WordModel(name: 'Cuiaba', hint: 'Brezilya\'nın batısında büyük bir şehir.'),
    WordModel(name: 'Goiânia', hint: 'Brezilya\'nın merkezinde büyük bir şehir.'),
    WordModel(name: 'Natal', hint: 'Brezilya\'nın kuzeydoğusunda önemli bir şehir.'),
    WordModel(name: 'Campo Grande', hint: 'Brezilya\'nın merkezinde büyük bir şehir.'),
    WordModel(name: 'Belém', hint: 'Brezilya\'nın kuzeyinde büyük bir şehir.'),
    WordModel(name: 'Porto Velho', hint: 'Brezilya\'nın batısında büyük bir şehir.'),
    WordModel(name: 'Teresina', hint: 'Brezilya\'nın kuzeydoğusunda büyük bir şehir.'),
    WordModel(name: 'Aracaju', hint: 'Brezilya\'nın kuzeydoğusunda büyük bir şehir.'),
    WordModel(name: 'Maceió', hint: 'Brezilya\'nın kuzeydoğusunda önemli bir şehir.')
  ];

  WordModel? _currentCity;
  int _currentQuestionIndex = 0;
  bool _isLoading = false;
  bool _isCorrect = false;
  bool _showResult = false;
  final TextEditingController _textController = TextEditingController();
  Timer? _timer;
  int _timeRemaining = 100;

  WordModel? get currentCity => _currentCity;
  int get currentQuestionIndex => _currentQuestionIndex;
  bool get isLoading => _isLoading;
  bool get isCorrect => _isCorrect;
  bool get showResult => _showResult;
  TextEditingController get textController => _textController;
  int get timeRemaining => _timeRemaining;

  WordViewModel() {
    fetchRandomCity();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeRemaining > 0) {
        _timeRemaining--;
      } else {
        timer.cancel();
      }
      notifyListeners();
    });
  }

  void fetchRandomCity() {
    _isLoading = true;
    notifyListeners();

    _currentCity = (_cities..shuffle()).first;

    _isLoading = false;
    _showResult = false;
    _textController.clear();
    notifyListeners();
  }

  void checkAnswer() {
    if (_textController.text.toLowerCase() == _currentCity!.name.toLowerCase()) {
      _isCorrect = true;
    } else {
      _isCorrect = false;
      _timeRemaining -= 20;
    }
    _showResult = true;
    notifyListeners();
  }

  void skipQuestion() {
    nextQuestion();
  }

  void nextQuestion() {
    if (_currentQuestionIndex < 5 && _timeRemaining > 0) {
      _currentQuestionIndex++;
      fetchRandomCity();
    } else {
      _timer?.cancel();
      notifyListeners();
    }
  }

  void resetGame() {
    _currentQuestionIndex = 0;
    _timeRemaining = 100;
    fetchRandomCity();
    startTimer();
  }
}
