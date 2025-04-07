import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SharedPreferenceProvider {
  @singleton
  Future<SharedPreferences> sharedPreferences() async => await SharedPreferences.getInstance();
  @singleton
  SharedPreferencesAsync sharedPreferencesAsync() => SharedPreferencesAsync();
}
