import 'dart:convert';
import 'package:http/http.dart' as http;

class User{
  String username;
  String email;
  String pass;
  User(this.username,this.email,this.pass);

  String userReturned = "";

  Future<String> getUser() async {
    String request =  "'${this.username}','${this.email}','${this.pass}'";
    var url = 'https://kulsal7ss0.execute-api.us-west-2.amazonaws.com/';
    var response = await http.post(url, body: request);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    userReturned = response.statusCode == 200 ? response.body : 'Request Error';
    return userReturned;
  }


}