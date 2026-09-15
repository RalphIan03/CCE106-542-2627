import 'package:flutter/material.dart';


class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  TextEditingController SizeChanger = new TextEditingController();
  var textmenustyle = TextStyle(
      fontSize: 20,  fontWeight: FontWeight.bold, color: Colors.black
  );

  var menuContSize = 80.0;
  var textValue = "Post 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity 1 Page"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Dashboard", style: TextStyle(fontSize: 40),),
          TextField(
            controller: SizeChanger,
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              menuContSize = double.parse(SizeChanger.text);
              textValue = SizeChanger.text;
            });
          }, child: Text("Press Me")),
          Row(
            children: [
              Container(
                width: menuContSize,
                  color: Colors.green,
                  child: Center(child: Text("Menu 1" , style: textmenustyle,))),
              Container(
                  width: menuContSize,
                  color: Colors.pink,
                  child: Center(child: Text("Menu 2", style: textmenustyle
                  ))),
              Container(
                  width: menuContSize,
                  color: Colors.amberAccent,
                  child: Center(child: Text("Menu 3", style: textmenustyle)))
            ],
          ),
          Container(
            width: double.infinity,
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("The size is: $textValue", style: TextStyle(fontSize: 30),),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec facilisis libero. Aliquam tellus massa, elementum a accumsan nec, vehicula eget magna. Vestibulum auctor tempus nulla eu scelerisque. Quisque sed viverra diam. Nam vehicula ac turpis in eleifend. Nullam porta efficitur lacus, ac rutrum nunc mattis ut. Donec maximus vulputate eros, ac ullamcorper risus sagittis sed.")
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.lightBlueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Post 2", style: TextStyle(fontSize: 30),),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec facilisis libero. Aliquam tellus massa, elementum a accumsan nec, vehicula eget magna. Vestibulum auctor tempus nulla eu scelerisque. Quisque sed viverra diam. Nam vehicula ac turpis in eleifend. Nullam porta efficitur lacus, ac rutrum nunc mattis ut. Donec maximus vulputate eros, ac ullamcorper risus sagittis sed.")
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Post 3", style: TextStyle(fontSize: 30),),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec facilisis libero. Aliquam tellus massa, elementum a accumsan nec, vehicula eget magna. Vestibulum auctor tempus nulla eu scelerisque. Quisque sed viverra diam. Nam vehicula ac turpis in eleifend. Nullam porta efficitur lacus, ac rutrum nunc mattis ut. Donec maximus vulputate eros, ac ullamcorper risus sagittis sed.")
              ],
            ),
          ),

        ],
      ),
    );
  }
}
