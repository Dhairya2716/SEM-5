import './utils/import_export.dart';

class DialogController extends GetxController{

  void ShowAlertDialogBox(){
    Get.defaultDialog(
      title: 'Sample Getx Alert Dialog Box',
      middleText: 'Still Reading this dialog box get out',
      textConfirm: 'Yes',
      textCancel: 'No',
      confirmTextColor: Colors.cyanAccent,
      onConfirm: (){
        Get.back();
        // Get.snackbar('Confirmed', 'Alert Dialog Box using Getx', backgroundColor: Colors.red);
      },
      onCancel: () => Get.back()
    );
  }

}