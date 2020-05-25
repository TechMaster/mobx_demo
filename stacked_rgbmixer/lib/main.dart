import 'package:flutter/material.dart';
import 'rgb_mixer_view.dart';
import 'customAppBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          /* appBar: AppBar(
            title: Text('Material App Bar'),
          ),*/
          appBar: PreferredSize(
              //Phải cho Observer vào trong PreferredSize vì appBar cần kiểu PreferredSizeWidget
              preferredSize: const Size.fromHeight(60),
              child: CustomAppBar()),
          body: RGBMixerView(),
        ));
  }
}
