import 'dart:io';

class Environment {
  static String apiUrl = Platform.isAndroid
      ? 'https://chat-serve.up.railway.app/api'
      : 'https://chat-serve.up.railway.app/api';
  static String socketUrl = Platform.isAndroid
      ? 'https://chat-serve.up.railway.app'
      : 'https://chat-serve.up.railway.app';
}
