import 'package:flutter/material.dart';
import 'package:myboss22/josscontroller.dart';
import 'package:get/get.dart';
import 'package:myboss22/profile.dart';
void main()
{
  runApp(Main());
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  JossController lol=Get.put(JossController());
  @override
  Widget build(BuildContext context) {
    print("ajaira shit");
    return Scaffold(
      appBar: AppBar(
        title: Obx(()=>Text("Hello ${lol.x}"))
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => GestureDetector(child: Text("${lol.x}",style: TextStyle(fontSize: 60),),onTap: () => lol.alldlt(),)),
            ElevatedButton(onPressed: (){
             Get.snackbar(
               colorText: Colors.white,
               backgroundColor: Colors.blueAccent.shade200,
               icon: Icon(Icons.cake),
                 "Happy Birthday",
                 "Hey This is your Birthday!!"
             );
            }, child: Text("Snackbar")),
            ElevatedButton(onPressed: (){
             Get.bottomSheet(
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    SizedBox(height: 14,),
                    Text("Hello World",style: TextStyle(fontSize: 34),),
                  ],
                ),
              )
             );
            }, child: Text("Bottom Sheet")),
            ElevatedButton(onPressed: (){
              Get.defaultDialog(
                title: "Hello World",
                content: Text("This is just a modal"),
                backgroundColor: Colors.blue.shade100,
                actions: [
                  TextButton(onPressed: (){}, child: Text("Confirm")),
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text("Cancel"))
                ]
              );
            }, child: Text("Dialog")),
            ElevatedButton(onPressed: (){Get.offAll(
                Profile(),
              transition: Transition.cupertino
            );}, child: Text("Go to profile"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>lol.increm(), child: Icon(Icons.add),),
    );
  }
}