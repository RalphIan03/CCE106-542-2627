import 'package:flutter/material.dart';
import 'package:sampleflutter/page3.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset(
                    'assets/image/pic1.jpg',
                    height: 200,
                    width: 200,
                  ),
                  Image.asset(
                    'assets/image/pic1.jpg',
                    height: 200,
                    width: 200,
                  ),
                  Image.asset(
                    'assets/image/pic1.jpg',
                    height: 200,
                    width: 200,
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/image/pic1.jpg',
               height: 200,
               width: 200,
            ),
            Image.asset(
              'assets/image/pic2.jpg',
              height: 200,
              width: 200,
            ),
            Image.asset(
              'assets/image/pic3.jpg',
              height: 200,
              width: 200,
            ),
            Image.asset(
              'assets/image/pic3.jpg',
              height: 200,
              width: 200,
            ),
            Image.asset(
              'assets/image/pic3.jpg',
              height: 200,
              width: 200,
            ),
            Image.asset(
              'assets/image/pic3.jpg',
              height: 200,
              width: 200,
            ),
           // Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRORHqt5EPV_gP6qWzf0fGS2YVsX9wdmknFAGWrXuB7Su9ruzMspxaobl_B&s=10'),
            Row(
              children: [



                Container(
                  height: 50,
                  width: 150,
                  color: Colors.blue,
                  child: Center(
                      child: Text("Hello",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),)),
                ),
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.green,
                  child: Center(
                      child: Text("World",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),)),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.blue,
                  child: Center(
                      child: Text("Hello",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),)),
                ),
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.red,
                  child: Center(
                      child: Text("World",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),)),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.blue,
                  child: Center(
                      child: Text("Hello",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),)),
                ),
                Container(
                  height: 50,
                  width: 150,
                  color: Colors.green,
                  child: Center(
                      child: Text("World",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),)),
                  
                ),
              ],
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Page3()));
            }, child: Text("Page 3"))
          ],
        )
      ),
    );
  }
}
