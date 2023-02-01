import 'dart:convert';

import 'package:chat_app/models/mensaje.dart';

class MensajesResponse {
  MensajesResponse({
    required this.ok,
    required this.mensajes,
    required this.msg,
  });

  bool ok;
  List<Mensaje> mensajes;
  String msg;

  factory MensajesResponse.fromRawJson(String str) =>
      MensajesResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MensajesResponse.fromJson(Map<String, dynamic> json) =>
      MensajesResponse(
        ok: json["ok"],
        mensajes: List<Mensaje>.from(
            json["mensajes"].map((x) => Mensaje.fromJson(x))),
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "mensajes": List<dynamic>.from(mensajes.map((x) => x.toJson())),
        "msg": msg,
      };
}
