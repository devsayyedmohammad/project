import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:humansafety/controllers/textformcontroller.dart';
import 'package:humansafety/extentions/extention_on_num.dart';
import 'package:humansafety/views/addtrustedcontacts/addcontact_screen.dart';
import 'package:provider/provider.dart';

class TrustedcontactScreen extends StatelessWidget {
  TrustedcontactScreen({super.key});
  Textformcontroller? controller;
  @override
  Widget build(BuildContext context) {
    controller = Provider.of<Textformcontroller>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Trusted Contacts"),
      ),
      body: Container(
        height: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<Textformcontroller>(
              builder: (context, controller, _) {
                return SizedBox(
                  height: 550,
                  child: ListView.builder(
                    itemCount: controller.saveTrustedContact.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5.r)),
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text(
                              controller.saveTrustedContact[index]['name']!),
                          subtitle: Text(
                              controller.saveTrustedContact[index]['number']!),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            Text(
                textAlign: TextAlign.center,
                "You did not added trusted contacts \nAdd Trusted contacts by clicking + button below "),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddcontactScreen()));
                  },
                  icon: Icon(Icons.add),
                  iconSize: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
