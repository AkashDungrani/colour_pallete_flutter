import 'package:flutter/cupertino.dart';
import '../models/theme.dart';

class ThemeProvider extends ChangeNotifier {
  AppTheme obj = AppTheme(isDark: false);

  void changeTheme() {
    obj.isDark = !obj.isDark;
    notifyListeners();
  }
}
