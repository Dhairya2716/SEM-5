import './utils/import_export.dart';

class GetconnectView extends StatelessWidget {
  final GetconnectController controller = Get.put(GetconnectController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          APPBAR_NAME,
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: const Color.fromARGB(255, 23, 137, 194),
      ),
      body: Obx(() {
        if (controller.isLoading.value){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (controller.users.isEmpty) {
          return const Center(child: Text(NO_DATA));
        }
        return ListView.builder(
          itemCount: controller.users.length,
          itemBuilder: (context, index){
            final user = controller.users[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(user.name[0].toUpperCase()),
                ),
                title: Text(user.name),
                subtitle: Text('Age: ${user.age}'),
                trailing: IconButton(onPressed: (){
                  controller.updateUser(index+1);
                }, icon: const Icon(Icons.edit)),
              ),
            );
          }
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.createUser,
        child: const Icon(Icons.add),
        tooltip: 'Create user (POST)',
      ),
    );
  }
}
