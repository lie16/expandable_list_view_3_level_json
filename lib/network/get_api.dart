import 'package:http/http.dart' as http;

class GetApi {
  getData(apiUrl) async {
    return await http.get(apiUrl);
  }
}
