import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_app/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primaryColor: TwConstant.kPrimaryColor,
        scaffoldBackgroundColor: TwConstant.kDarkBgColor,
        cardColor: TwConstant.kDarkCardColor,
        canvasColor: TwConstant.kDarkBgColor,
        appBarTheme: AppBarTheme(
          backgroundColor: TwConstant.kDarkBgColor,
          foregroundColor: Colors.white,
          elevation: 1.0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: TwConstant.kDarkBgColor,
          selectedItemColor: Colors.white
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white
        ),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          "assets/images/twitter.png",
          width: 25.0,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.whatshot),
          )
        ],
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Image.asset("assets/images/man.png"),
            ),
          ),
        ),
        leadingWidth: 45.0,
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
          child: ListView(
              children: [
              ]
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        elevation: 0,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
