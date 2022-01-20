import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

var url = Uri.parse('https://api.m3o.com/v1/user/Create');

Future apiCalling(Map jasonfile) async {
  var response = await http.post(
    url,
  );

  if (response.statusCode == 200) {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool("signup", true);
  }
}
