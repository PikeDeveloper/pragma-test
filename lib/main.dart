import 'package:flutter/material.dart';
import 'package:pragma/ui/pages/home/home.dart';
import 'package:provider/provider.dart';
import 'providers/cats_provider.dart';
import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CatsProvider.instance()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Pragma",
        routes: Routes.routes,
        themeMode: ThemeMode.system,
        home: Home(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
