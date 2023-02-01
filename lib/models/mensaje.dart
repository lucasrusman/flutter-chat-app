
import 'dart:convert';

class Mensaje {
    Mensaje({
        required this.de,
        required this.mensaje,
        required this.createdAt,
        required this.updatedAt,
    });

    String de;
    String mensaje;
    DateTime createdAt;
    DateTime updatedAt;

    factory Mensaje.fromRawJson(String str) => Mensaje.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Mensaje.fromJson(Map<String, dynamic> json) => Mensaje(
        de: json["de"],
        mensaje: json["mensaje"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "de": de,
        "mensaje": mensaje,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}
