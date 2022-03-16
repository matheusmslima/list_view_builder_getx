import 'package:get/get.dart';
import '../../repositories/user_repository.dart';

class HomeController extends GetxController {
  var userList = <String>[].obs;

  void addNewUser(){
    UserRepository().findUser().then((value) => userList.add(value.firstName + ' ' + value.lastName));
  }

}
