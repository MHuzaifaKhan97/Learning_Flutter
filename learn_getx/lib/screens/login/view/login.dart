import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  validate() {
    if (emailController.text == "" || passController.text == "") {
      Get.snackbar(
        "Empty Fields",
        "Kindly please filled the requried field.",
        backgroundColor: Colors.orange,
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        margin: EdgeInsets.only(bottom: 5),
      );
    } else {
      if (GetUtils.isEmail(emailController.text)) {
        Get.snackbar(
          "Success",
          "Nice email formatted & Password is strong.",
          backgroundColor: Colors.green,
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          margin: EdgeInsets.only(bottom: 5),
        );
        if (passController.text.length < 8) {
          Get.snackbar(
            "Weak password",
            "Kindly please makes strong password",
            backgroundColor: Colors.orange,
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            margin: EdgeInsets.only(bottom: 5),
          );
        }
      } else {
        Get.snackbar(
          "Incorrect Format",
          "Badly email formatted.",
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          margin: EdgeInsets.only(bottom: 5),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 5),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Username...',
                ),
                controller: emailController,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter Password...',
                ),
                obscureText: true,
                controller: passController,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 30, 50, 10),
              child: FlatButton(
                minWidth: double.infinity,
                color: Colors.blue,
                onPressed: validate,
                child: Text(
                  'Check Validation',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
