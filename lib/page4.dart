import 'package:flutter/material.dart';
import 'package:sampleflutter/page2.dart';

class FourthPage extends StatefulWidget {
  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  // const FourthPage({super.key});
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  var usernameVal = "";
  var passwordVal = "";

  buildRow(sampleImage) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(sampleImage)
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/github-white-icon.png",
                scale: 4,
              ),
              Text("Random App", style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 30,),
              TextField(
                controller: username,
                decoration: InputDecoration(
                  hint: Text("Username"),
                  icon: Icon(Icons.person, color: Colors.white,),
                    filled: true,
                    fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: password,
                decoration: InputDecoration(
                    hint: Text("Password"),
                    icon: Icon(Icons.lock, color: Colors.white,),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),

                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                setState(() {
                  usernameVal = username.text;
                  passwordVal = password.text;
                });
                //
                // Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> SecondPage()));
                // Navigator.push(context, MaterialPageRoute(builder:(context)=> SecondPage()));

                usernameVal == "Gwapo"&&passwordVal=="Gwapo123"?Navigator.push(context, MaterialPageRoute(builder:(context)=> SecondPage(usernames: "Gwapo", name: "Jebee UV Kapa", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2nH9OMhCzfIGkHgMg3Nsu72I4jqdsy62nqJa9M0zH0g&s=10",))):print("Wrong");

              }, child: Text("Login", style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                )
                ),

              Text("Username: $usernameVal"),
              Text("Password: $passwordVal")
            ],
          ),
        ),
      ),
    );
  }
}
