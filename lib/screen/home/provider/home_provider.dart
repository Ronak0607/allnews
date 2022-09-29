import 'package:flutter/foundation.dart';

import '../modal/modal_screen.dart';

class HomeProvider extends ChangeNotifier
{
  getdata? g1;

  List<getdata> NewsData = [
    getdata(link: "https://sandesh.com/epaper/surat",name: "SANDESH",image: "https://s3-ap-southeast-1.amazonaws.com/paperboy-papers/paperboy-paper-image/220720/clot1595418720512-abc.jpg"),
    getdata(link: "https://epaper.gujaratmitra.in/",name: "GUJRATMITRA"),
    getdata(link: "https://epaper.gujaratsamachar.com/",name: "GUJRAT SAMACHAR"),
    getdata(link: "https://www.gandhinagarsamachar.com/category/e-papers/",name: "GANDHINAGAR"),
    getdata(link: "https://epaper.timesgroup.com/home",name: "TIMES GROUP"),
    getdata(link: "https://epaper.divyabhaskar.co.in/",name: "DIVAYBHASKAR"),
    getdata(link: "https://epaper.sakshi.com/",name: "SAKSHI"),

  ];

  void adddata(getdata g2)
  {
    g1 = g2;
    notifyListeners();
  }

}



