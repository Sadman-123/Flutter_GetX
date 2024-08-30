import 'package:get/get.dart';
class JossController extends GetxController
{
  RxInt x=0.obs;
  void increm()
  {
    x++;
  }
  void alldlt()
  {
    x.value=0;
  }
}