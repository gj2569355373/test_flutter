import 'package:get/get.dart';

/// GJ 2022/9/18 17:12
class Controller extends GetxController{
  final user = User(0, "SY").obs;
  RxInt count = 0.obs;
  var title = "首页".obs;

  increment() {
    count++;
    user.value.count++;
    user.value= User(user.value.count, user.value.title);
  }
  inTitle() {
    title.value="首页2";
    user.value.title="首页User";

    user.value= User(user.value.count, user.value.title);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    user.value=User(0, "SY");
  }
}
class User {
  int count;
  String title;

  User(this.count, this.title);
}