import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_color_changer/controllers/color_provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Provider.of<ColorProvider>(context).currentcolor,
        ),
        appBar: AppBar(
          title: Text('Color Changer'),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Provider.of<ColorProvider>(context, listen: false)
                  .colorSelector();
            }),
      ),
    );
  }
}
