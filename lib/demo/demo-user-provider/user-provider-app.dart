// Application Flutter : User Provider App
import 'package:eni_demo/demo/demo-user-provider/user-detail-page.dart';
import 'package:eni_demo/demo/demo-user-provider/user-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProviderApp extends StatelessWidget {
  const UserProviderApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => UserProvider(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // Page d'accueil
          home: UserDetailPage(),
        ));
  }
}
