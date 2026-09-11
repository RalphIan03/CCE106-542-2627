import 'package:flutter/material.dart';


class Page3 extends StatelessWidget {
  const Page3({super.key});

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
          Row(
            children: [
              Container(
                width: 60,
                  color: Colors.green,
                  child: Center(child: Text("Menu 1"))),
              Container(
                  width: 60,
                  color: Colors.blue,
                  child: Center(child: Text("Menu 2"))),
              Container(
                  width: 60,
                  color: Colors.amberAccent,
                  child: Center(child: Text("Menu 3")))
            ],
          ),
          Container(
            width: double.infinity,
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Post 1", style: TextStyle(fontSize: 30),),
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
