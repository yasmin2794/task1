import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/layout_controller.dart';
import 'model/app_state_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppStateModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LayoutController(),
      ),
    );
  }
}
