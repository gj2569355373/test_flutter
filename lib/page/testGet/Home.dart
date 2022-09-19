import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_flutter/page/testGet/Controller.dart';

/// GJ 2022/9/18 17:13
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(context) {

    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    final Controller c = Get.put(Controller());
    print("build");
    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(title: Obx(() {
          print("Clicks");
          return Text("${c.user.value.title}""Clicks: ${c.user.value.count}");
        })),

        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Center(child: ElevatedButton(
            child: Obx(() {
              print("Text");
              return Text(c.title.toString()+"");
            }), onPressed: c.increment)),
        floatingActionButton:
        FloatingActionButton(child: Icon(Icons.add), onPressed: c.inTitle));
  }
}

class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final Controller c = Get.find();

  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(body: Center(child: Text("${c.count}")));
  }
}