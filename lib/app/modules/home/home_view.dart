import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView.builder GetX')),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.userList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: const Icon(Icons.person_add_sharp),
              title: Text('Name: ${controller.userList[index]}'),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.addNewUser,
        child: const Icon(Icons.add),
      ),
    );
  }
}
