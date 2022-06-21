import 'package:flutter/material.dart';

import 'src/routes/route_controller.dart';
import 'src/routes/route_names.dart';
import 'src/styles/theme.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food delivery App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.buildTheme,
      onGenerateRoute: RouteController().pageRoute,
      initialRoute: RouteNames.initial,
    );
  }
}
