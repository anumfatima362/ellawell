import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Helper/Providers/Provider_helper.dart';
import 'Helper/route_helper.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

        providers:Providerhelper.Provider,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            //useMaterial3: true,
          ),
          initialRoute: RouterHelper.initial,
          routes: RouterHelper.routes,
        ) ,
    );



  }
}

