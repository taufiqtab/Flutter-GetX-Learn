import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'coba/Controller.dart';

void main() => runApp(GetMaterialApp(home: Home()));

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Text('${controller.counter.value}'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        controller.increment();
        controller.showSnackbar();
      },
      
      ),
    );
  }
}
