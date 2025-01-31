
import 'package:get_storage/get_storage.dart';

class AuthTokenService {
  static final AuthTokenService _instance = AuthTokenService._internal();
  final storage = GetStorage();

  factory AuthTokenService() {
    return _instance;
  }

  AuthTokenService._internal();

  String? getToken() {
    return storage.read('jwt');
  }

  Future<void> setToken(String token) async {
    await storage.write('jwt', token);
  }

  Future<void> removeToken() async {
    await storage.remove('jwt');
  }

  int? getId() {
    return storage.read('id');
  }
}