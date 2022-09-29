import 'package:allnews/screen/home/provider/home_provider.dart';
import 'package:allnews/screen/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../home/modal/modal_screen.dart';

class Viewpage extends StatefulWidget {
  const Viewpage({Key? key}) : super(key: key);

  @override
  State<Viewpage> createState() => _ViewpageState();
}

class _ViewpageState extends State<Viewpage> {


  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;


  @override
  Widget build(BuildContext context) {


    homeProvidertrue = Provider.of<HomeProvider>(context,listen: true);
    homeProviderfalse = Provider.of<HomeProvider>(context,listen: false);

    return SafeArea(child: Scaffold(
      body: WebView(
        initialUrl: "${homeProvidertrue!.g1!.link}",
      ),
    ));
  }
}
