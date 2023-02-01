import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:chat_app/global/enviroment.dart';
import 'package:chat_app/models/mensaje.dart';
import 'package:chat_app/models/mensaje_response.dart';
import 'package:chat_app/models/usuario.dart';
import 'package:chat_app/services/auth_service.dart';

class ChatService with ChangeNotifier {
  late Usuario usuarioPara;
  Future<List<Mensaje>> getChat(String usuarioLeerId) async {
    final url = Uri.parse('${Environment.apiUrl}/mensajes/$usuarioLeerId');
    final token = await AuthService.getToken();
    final res = await http.get(url,
        headers: {'Content-Type': 'application/json', 'x-token': token!});
    final mensajesResponse = MensajesResponse.fromRawJson(res.body);
    return mensajesResponse.mensajes;
  }
}
