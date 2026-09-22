import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampleflutter/page3.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}



class _SecondPageState extends State<SecondPage> {

  starRenderer(int starRating) => Row(
    children: [
      for(int x = 1; x <=starRating; x++)
        Icon(Icons.star, color: Colors.yellow,),
      for(int x=1; x<=5-starRating; x++)
        Icon(Icons.star)
    ],
  );


  PostShape(postAvatar,postTitle, postDesc, postImage, starRating)=> Container(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(postAvatar),
              ),
              SizedBox(width: 10,),
              Text(postTitle,style: TextStyle(fontSize: 25),),
            ],
          ),
          Text(postDesc),
          SizedBox(height: 5,),
          Center(child: Image.network(postImage, height: 250,)),
          SizedBox(height: 5,),
          //for stars rating
          Row(
            children: [
              starRenderer(starRating),
              Text(starRating.toString())
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: Row(
                children: [
                  Icon(CupertinoIcons.heart),
                  SizedBox(width: 10,),
                  Text("Like"),
                ],
              )),
              ElevatedButton(onPressed: (){}, child: Row(
                children: [
                  Icon(Icons.comment_outlined),
                  SizedBox(width: 10,),
                  Text("Comment"),
                ],
              )),
              ElevatedButton(onPressed: (){}, child: Row(
                children: [
                  Icon(Icons.share),
                  SizedBox(width: 10,),
                  Text("Share"),
                ],
              ))
            ],
          ),
        ],
      ),
    ),
  );
  ImageStack (imageFile, textValue) => Stack(
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
      appBar: AppBar(
        title: Text("Facebook Imitation"),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            SizedBox(height: 20,),
            PostShape("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcQc0hl7bLaegLx75UZYZ9au3doK-IkdJTS0Tf0ZclZg&s=10" ,"Mark Zuckerberg", "What a beautiful night sky", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1w1wpQj2TPW3jZ8c8AcNGu3bU_vW9RMzL77HOTM18bw&s=10", 1),
            PostShape("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm5_Qb4_b0u8m2cZ_9r4zw4HzKJjiV565N_xHkmU2Zlw&s" ,"TungTungTung Sahur", "My beloved Ballerina", "https://i.ytimg.com/vi/If9jjH4Y7d8/hqdefault.jpg", 3),
            PostShape("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCz9H8GD3WcAVzdbximrm0tIXZ0B2MGa8Ob18X39Rn-g&s=10", "Wade Wilson", "Me and My best bud", "https://m.media-amazon.com/images/M/MV5BOTcxNzNmMzItYTk0ZC00YmM4LThhYTQtOTFhYzE4YjNkODhmXkEyXkFqcGdeQWpnYW1i._V1_.jpg", 2),
            PostShape("https://media.wired.com/photos/5926c126af95806129f50868/3:2/w_2560%2Cc_limit/SuperMarioRunTA.jpg", "Super Mario", "Mamamia", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn62sDEjEkbHjjoWD_KEjiby1TXHrY3jZNmbf4GqOgQLX1ODOE4CXdwJaE&s=10",1),

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
