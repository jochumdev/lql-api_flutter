import 'dart:convert';

class ClientSettings {
  final String baseUrl;
  final String site;
  final bool validateSsl;

  final String username;
  final String secret;

  ClientSettings(
      {required this.baseUrl,
      required this.site,
      required this.username,
      required this.secret,
      this.validateSsl = false});

  String toJson() {
    var data = {
      "baseUrl": baseUrl,
      "site": site,
      "username": username,
      "secret": secret,
      "validateSsl": validateSsl
    };
    return jsonEncode(data);
  }

  static ClientSettings fromJson(String stringData) {
    dynamic data = jsonDecode(stringData);

    return ClientSettings(
        baseUrl: data["baseUrl"],
        site: data["site"],
        username: data["username"],
        secret: data["secret"],
        validateSsl: data["validateSsl"]);
  }
}
