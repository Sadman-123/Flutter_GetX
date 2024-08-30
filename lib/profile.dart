import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myboss22/josscontroller.dart';
import 'package:myboss22/main.dart';
class Profile extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    JossController jsx=Get.put(JossController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Obx(()=>Text("Hello ${jsx.x}",style: TextStyle(fontSize: 34),)),
            TextButton(onPressed: (){
              Get.offAll(Home(), transition: Transition.cupertino);
            }, child: Text("Go to home",style: TextStyle(fontSize: 25),)),
          ],
        ),
      ),
    );
  }
}