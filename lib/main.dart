import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:themes/themechangerprovider.dart';
import 'package:themes/themes.dart';
//import 'choosetheme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChangerProvider>(
      create :(_) => ThemeChangerProvider(ThemeData.light()),
      child:  ChooseTheme(),
    );
  }
}

class ChooseTheme extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChangerProvider>(context);
    return MaterialApp(
      home: Themes(),
      theme: theme.getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}

