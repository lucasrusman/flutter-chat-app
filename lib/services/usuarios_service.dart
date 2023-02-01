import 'package:chat_app/global/enviroment.dart';
import 'package:chat_app/models/usuarios_response.dart';
import 'package:chat_app/services/auth_service.dart';
import 'package:http/http.dart' as http;
import 'package:chat_app/models/usuario.dart';

class UsuariosService {
  Future<List<Usuario>> getUsuarios() async {
    try {
      final url = Uri.parse('${Environment.apiUrl}/usuarios');
      final token = await AuthService.getToken();
      final res = await http.get(url,
          headers: {'Content-Type': 'application/json', 'x-token': token!});
      final usuariosResponse = UsuariosResponse.fromRawJson(res.body);
      return usuariosResponse.usuarios;
    } catch (e) {
      return [];
    }
  }
}
