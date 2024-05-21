import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Aparencia extends ChangeNotifier {
  late bool _dark = true;

  void useDark() {
    _dark = true;
    notifyListeners();
  }

  void useLight() {
    _dark = false;
    notifyListeners();
  }

  bool get isDark => _dark;
}

ChangeNotifierProvider<Aparencia> criaAparencia() =>
    ChangeNotifierProvider(create: (_) => Aparencia());
