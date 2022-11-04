import 'dart:convert';

import 'package:http/http.dart' as http;

class RestApiDemoServices {
  final String baseApiUrl = 'https://apifreefortest-default-rtdb.asia-southeast1.firebasedatabase.app/users';

  ///get all users from rest api server: firebase server #Read
  Future<Map<String, dynamic>> getAllUsers() async {
    ///creating Uri object parsing from string
    final uri = Uri.parse('$baseApiUrl.json');

    ///getting response from the rest api server
    final response = await http.get(
      uri,
    );

    ///checking if there is data or not.. if not return empty Map else return data Map.
    if (response.body != 'null') {
      ///converting response data (string) to Map or JSON using jsonDecode function from dart:convert package
      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse;
    } else {
      return {};
    }
  }

  ///store the user to the rest api server: firebase server #Create
  Future<void> storeUser({required String fullName, required String password}) async {
    ///creating json data of fullName and password
    final demoJson = {"full_name": fullName, "password": password};

    ///converting to JSON string using jsonEncode to send to the firebase api server
    final dataJson = jsonEncode(demoJson);

    ///creating uri of the base api url
    ///.json is added because it is indeed for firebase api
    final uri = Uri.parse('$baseApiUrl.json');

    ///http post to the base api url with the fullname nad password
    ///adding data to the server
    final response = await http.post(uri, body: dataJson);
  }

  ///update user to the rest api server #Update
  Future<void> updateUser({required String fullName, required String password, required String id}) async {
    ///creating json data of fullName and password
    final demoJson = {"full_name": fullName, "password": password};

    ///converting to JSON string using jsonEncode to send to the firebase api server
    final dataJson = jsonEncode(demoJson);

    ///creating uri of the base api url
    final uri = Uri.parse('$baseApiUrl/$id.json');

    ///http put to the base api url with the fullname and password to update the data
    ///updating data
    final response = await http.put(uri, body: dataJson);
  }

  ///delete the user with his/her id from the rest api server #Delete
  Future<void> deleteUser({required String id}) async {
    ///creating uri of the base api url
    final uri = Uri.parse('$baseApiUrl/$id.json');

    ///deleting data
    final response = await http.delete(uri);
  }
}
