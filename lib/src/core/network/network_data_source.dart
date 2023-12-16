import 'package:focal_agent_coding_task/src/core/network/network_response.dart';
import 'package:http/http.dart' as http;

class NetworkDataSource {
  Future<NetworkResponse> get(String url) async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    return NetworkResponse(
      statusCode: response.statusCode,
      body: response.body,
    );
  }

  Future<NetworkResponse> post(String url, Map<String, dynamic> body) async {
    final uri = Uri.parse(url);
    final response = await http.post(uri, body: body);
    return NetworkResponse(
      statusCode: response.statusCode,
      body: response.body,
    );
  }
}
