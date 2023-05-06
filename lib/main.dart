import 'package:flutter/material.dart';
import 'package:new_colour_pallate_app/provider/colour_provider.dart';
import 'package:new_colour_pallate_app/provider/theme_provider.dart';
import 'package:new_colour_pallate_app/view/screens/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<PaletteProvider>(
          create: (context) => PaletteProvider(),
        ),
        ChangeNotifierProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        ),
      ],
      builder: (context, _) => MaterialApp(
        themeMode: (Provider.of<ThemeProvider>(context).obj.isDark)
            ? ThemeMode.dark
            : ThemeMode.light,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          '/': (context) => const HomePage(),
        },
      ),
    ));
}