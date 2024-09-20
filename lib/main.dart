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
      title: 'BIODATA',
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.person, color:Colors.white,),
            SizedBox(width: 6,),
            Text(
              'Profile', 
              style: TextStyle(color:Colors.white),
              ),
          ],
        ),
        backgroundColor: Colors.orange,
        ),
        backgroundColor:Colors.white,
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
               Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 177, 69),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color.fromARGB(255, 237, 151, 12), width: 2),
              ),
              child: const Text(
                'Welcome To My Profile',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),),
            Image.asset("assets/anis.png", width: 200.0),
            const Text('Nama : Anisa Sapita Dewi',
              style: TextStyle(
              fontSize: 20,
              color: Colors.orange,
            ),
            ),
            const Text('Ttl : Dipasena, 01 Januari 2024',
              style: TextStyle(
              fontSize: 20,
              color: Colors.orange,
            ),
            ),
             const Text('Alamat : Tanggamus',
              style: TextStyle(
              fontSize: 20,
              color: Colors.orange,
            ),
            ),
             const Text('No.Telp : 085812345678',
              style: TextStyle(
              fontSize: 20,
              color: Colors.orange,
            ),
            ),
            ],
            ),
        ));
  }
}
