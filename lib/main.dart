import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/one.jpg',
    'assets/images/two.jpg',
    'assets/images/three.jpg',
    'assets/images/four.jpg',
    'assets/images/five.jpg',
    'assets/images/onw.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: Colors.grey[600],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu),
          title: Text('Home'),
          centerTitle: true,
          actions: [
            Padding(
                padding: EdgeInsets.all(10.0),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('assets/images/one.jpg'),
                      fit: BoxFit.cover,
                    )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.4),
                          Colors.black.withOpacity(.2),
                        ]
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("LifeStyle Sale", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                        SizedBox(height: 30,),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                          ),
                          child: Center(child: Text("Shop Now", style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold),)),
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: _listItem.map((item) => Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover,
                              )
                          ),
                          child: Transform.translate(
                            offset: Offset(55,-45),
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 72, vertical: 70),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Icon(Icons.bookmark_border),
                            ),
                          ),
                        ),
                      )).toList(),
                    ),
                ),
              ],
            ),
          ),

        ),
    );
  }
}


