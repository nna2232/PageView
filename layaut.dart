import 'package:flutter/material.dart';

class Data {
  final String title;
  final String description;
  final String imageurl;
  final IconData iconData;

  Data({
    required this.title,
    required this.description,
    required this.imageurl,
    required this.iconData,
  });
}

class pview extends StatefulWidget {
  const pview({super.key});

  @override
  State<pview> createState() => _pviewState();
}

class _pviewState extends State<pview> {
  List<Data> myData = [
    Data(
        title: "title 1", 
        description: "lorem yyyyyyyyyyyyiyfgjxfd djgdjgdd",
        imageurl: "image/download.png",
        iconData: Icons.add
        ),
        Data(
        title: "title 2", 
        description: "lorem yyyyyyyyyyyyiyfgjxfd djgdjgdd",
        imageurl: "image/download (3).png",
        iconData: Icons.add
        ),
          Data(
        title: "title 3", 
        description: "lorem yyyyyyyyyyyyiyfgjxfd djgdjgdd",
        imageurl: "image/download (2).png",
        iconData: Icons.add
        ),
          Data(
        title: "title 4", 
        description: "lorem yyyyyyyyyyyyiyfgjxfd djgdjgdd",
        imageurl: "image/download (1).png",
        iconData: Icons.add
        ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
            children: [
               PageView(
        children: myData.map((item) => 
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage(item.imageurl),
              fit: BoxFit.cover
              ),
          ) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(item.iconData, size: 150),
              Text(item.title, style: TextStyle(fontSize: 130,color: Colors.blueAccent),),
              Text(item.description),
             
            ]
          ),
        )).toList(

        ) ,),
        Align(
alignment: Alignment(0, 0.95),
widthFactor: double.infinity,

          child: 
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 0, 94, 255)),
                
              ),
              onPressed: () {  },
              child: Text("get start")
            )
            )
            ],
            )
            ),
    );
  }
}
