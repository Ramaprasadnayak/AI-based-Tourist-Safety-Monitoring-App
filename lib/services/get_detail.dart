import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String?> loadTokenSub() async {
  final prefs = await SharedPreferences.getInstance();
  final savedToken = prefs.getString("access_token");

  if (savedToken != null) {
    final decoded = JwtDecoder.decode(savedToken);
    return decoded["sub"];
  }
  return null;
}

Future<int?> loadTokenId() async {
  final prefs = await SharedPreferences.getInstance();
  final savedToken = prefs.getString("access_token");

  if (savedToken != null) {
    final decoded = JwtDecoder.decode(savedToken);
    return decoded["id"];
  }
  return null;
}
