// import 'package:flutter_crud_api_sample_app/src/model/profile.dart';
// import ''
// import 'package:http/http.dart' show Client;

// class ApiService {

//   final String baseUrl = "http://api.bengkelrobot.net:8001";
//   Client client = Client();

//   Future<List<Profile>> getProfiles() async {
//     final response = await client.get("$baseUrl/api/profile");
//     if (response.statusCode == 200) {
//       return profileFromJson(response.body);
//     } else {
//       return null;
//     }
//   }

// }