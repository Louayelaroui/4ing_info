import 'package:flutter/material.dart';

import 'drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(

        body:
        ListView(
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/download.jpg",
                    fit: BoxFit.cover, // This will cover the area without distorting the aspect ratio
                    width: MediaQuery.of(context).size.width, // This sets the image width to the screen width
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                          children: [
                            Text("test test test tet stets",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("test esttsetset s", style: TextStyle(color: Colors.grey),),

                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.red,),
                            Text("41"),
                          ],
                        ),

                      ],
                    ),

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.phone,color: Colors.blue,),
                          Text("Call",style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.near_me,color: Colors.blue,),
                          Text("Route",style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.share,color: Colors.blue,),
                          Text("Share",style: TextStyle(color: Colors.blue),)
                        ],
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Text("ajezb fjkzejkn fkjzenflk nzejkf nzklenf lkzenlkjf nz elkfnlkjdsn fgkjeznlkjdsnf,; slkgnsef ze,f lkzej klf nzelknfjze nglkzng kldno zelk klzenfoizef lkez nfkl ezfjknzlk fzeifn lkznfkl lkf nklzehf lzkejfnlkzenfi zzej ozej fiozejfi jzeiof jzeoijf",softWrap: true,),
                  ),
                  IconButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => drawerInterface ()),
                    );
                  }, icon:Icon( Icons.last_page)),



                ],
              ),
            ),

          ],
        ),
      )
    );
  }
}
