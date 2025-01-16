import 'package:shared_preferences/shared_preferences.dart';

class LangaugeCacheHelper {
  Future<void> cacheLangaugeCode(String langaugeCode) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("LOCALE", langaugeCode);
  }

  Future<String> getCachedLangaugeCode() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final cachedLanguageCode = sharedPreferences.getString("LOCALE");
    if (cachedLanguageCode != null) {
      return cachedLanguageCode;
    } else {
      return "en";
    }
  }
}
