import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_color_changer/controllers/color_provider.dart';
import 'package:provider_color_changer/views/homescreen.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homescreen(),
      ),
    );
  }
}
