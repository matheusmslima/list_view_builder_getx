import '../models/user.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  Future<User> findUser() async {
    var url = 'https://random-data-api.com/api/users/random_user';
    var response = await http.get(Uri.parse(url));
    var user = User.fromJson(response.body);
    return user;
  }
}
