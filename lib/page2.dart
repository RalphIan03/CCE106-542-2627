import 'package:flutter/material.dart';
import 'package:sampleflutter/page3.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  ImageStack(imageFile, textValue) => Stack(
    alignment: AlignmentGeometry.bottomLeft,
    children: [
      Image.asset(
        imageFile,
        height: 100,
        width: 150,
      ),
      Text(textValue, style: TextStyle(color: Colors.white),),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageStack("assets/image/pic1.jpg", "Mac Lab"),
                  ImageStack("assets/image/pic2.jpg", "Outside UM"),
                  ImageStack("assets/image/pic3.jpg", "Flag Pole"),
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
