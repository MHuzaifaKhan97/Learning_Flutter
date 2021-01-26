import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:learn_getx/screens/home/controller/home_controller.dart';
import 'package:learn_getx/services/api_service.dart';
import '../../detail/view/detail.dart';

class HomeScreen extends StatelessWidget {
  // this will inject the dependency and also return reference of the service.
  final apiService = Get.put(ApiService());
  final homeState = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${homeState.count}",
                style: TextStyle(fontSize: 40),
              ),
            ),
            FlatButton(
              onPressed: () {
                homeState.increment();
              },
              child: Text(
                'Increment',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
            ),
            Text(
              'Home Screen',
              style: TextStyle(fontSize: 40),
            ),
            FlatButton(
              onPressed: () {
                // Get.to(DetailScreen());
                //
                // when we don't want to go back.
                // Get.off(DetailScreen());
                //
                // when we want to navigate using name
                Get.toNamed('/detail');

                // print(apiService.fetchTextFrom());
              },
              child: Text(
                'Goto Detail',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.orange,
            ),
          
            FlatButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "GetX Dialog",
                  // textCustom: "Hello World from GetX Dialog",
                  content: Text("Hello World from GetX Dialog"),
                );
              },
              child: Text(
                'Click to open dialog',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
          
          ],
        ),
      ),
    );
  }
}
