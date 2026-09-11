import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  // const FourthPage({super.key});
  TextEditingController sampleText = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: sampleText,
              decoration: InputDecoration(
                hint: Text("Username"),
                icon: Icon(Icons.person),
                fillColor: Colors.lightBlueAccent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: sampleText,
              decoration: InputDecoration(
                  hint: Text("Username"),
                  icon: Icon(Icons.person),
                  fillColor: Colors.lightBlueAccent,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              ),
            ),
            ElevatedButton(onPressed: (){
              print(sampleText.text);
            }, child: Text("Press Me")),
          ],
        ),
      ),
    );
  }
}
