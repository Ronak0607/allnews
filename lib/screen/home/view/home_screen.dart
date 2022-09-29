import 'dart:io';

import 'package:allnews/screen/home/modal/modal_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = AndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple.shade900,
            title: Text(
              "All in one News",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Color(0xffe0e0e0),
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                      itemCount: homeProviderfalse!.NewsData.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: (50 / 55)),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 120,
                                  color: Colors.white,
                                  child: Image.network("${homeProvidertrue!.NewsData[index].image}"),
                                ),
                                TextButton(onPressed: () {
                                  homeProviderfalse!.adddata(getdata(
                                      link: homeProviderfalse!.NewsData[index]
                                          .link,
                                      name: homeProviderfalse!.NewsData[index]
                                          .name));
                                  Navigator.pushNamed(context, 'web');
                                },
                                    child: Text(
                                      '${homeProvidertrue!.NewsData[index]
                                          .name}', style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                    ),))
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
