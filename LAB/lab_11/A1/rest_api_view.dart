import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './rest_api_controller.dart';

class RestApiView extends StatelessWidget {
  const RestApiView({super.key});

  @override
  Widget build(BuildContext context) {
    final RestApiController controller = Get.put(RestApiController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Rest Api using Getx"),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: controller.users.length,
            itemBuilder: (context, index) {
              final user = controller.users[index];
              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                    user.name[0],
                  ),
                ),
                title: Text(user.name),
                subtitle: Text("${user.city}\n${user.age}"),
              );
            },
          );
        }
      }),
    );
  }
}
