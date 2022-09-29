import 'package:allnews/screen/home/provider/home_provider.dart';
import 'package:allnews/screen/home/view/home_screen.dart';
import 'package:allnews/screen/webScreen/web_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => HomeScreen(),
          'web' : (context) => Viewpage(),
        },
      ),
    ),
  );
}