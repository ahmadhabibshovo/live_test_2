import 'package:flutter/material.dart';

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
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Profile());
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
        ),
      ),
      body: OrientationBuilder(builder: (context,orientation){
        return SingleChildScrollView(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [SizedBox(height: 30,),
              CircleAvatar(
                radius: orientation == Orientation.landscape? 70: 100,
                backgroundImage: AssetImage('assets/images/Habib.jpg'),
              ),
              Text(
                "Ahmad Habib",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: orientation == Orientation.landscape? 20: 30),
              ),
              Text(
                "ahmadhabibshovo@gmail.com",
                style: TextStyle( fontSize: orientation == Orientation.landscape? 12: 16,color: Colors.black54),
              ),
              Padding(
                padding:  orientation == Orientation.landscape? EdgeInsets.fromLTRB(100, 12, 100, 12): EdgeInsets.all(12),
                child: Text(
                  "In my dreams, I see lines of Dart code flowing effortlessly, building stunning UIs that shimmer on both iOS and Android devices. I imagine the app I'm crafting coming to life with every keystroke, the hot reload feature painting the screen with vibrant changes in an instant.",
                  style: TextStyle( fontSize: orientation == Orientation.landscape? 12: 16),
                ),
              ),
            ],
          ),
        );
      },)
    );
  }
}
