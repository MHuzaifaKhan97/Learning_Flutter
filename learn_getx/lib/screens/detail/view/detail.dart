import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/screens/home/controller/home_controller.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // we already injected dependency of API Service, so now i just referencing it.
    // this is not the new instance of ApiService().
    // final apiService = Get.find<ApiService>();
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
            // print(apiService.fetchTextFrom());
            // print(homeController.count);
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Detail Screen',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "${homeController.count}",
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
