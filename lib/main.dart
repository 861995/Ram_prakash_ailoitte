import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Ram_prakash_assignment/repository/http_service.dart';
import 'dart:async';
import 'package:Ram_prakash_assignment/screens/list_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
        providers: [
          ChangeNotifierProvider<HttpService>(create: (_) => HttpService())
        ],
        child:MyApp(),)
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
