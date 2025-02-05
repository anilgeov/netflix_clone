import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clonee/core/colours/colours.dart';
import 'package:netflix_clonee/presentaions/mainpage/widgets/appbar_widget_down_hot.dart';

import '../../core/constants.dart';

class Download_screen extends StatelessWidget {
  Download_screen({Key? key}) : super(key: key);

  /// set key for DownloadsImageWidget

  final _widgetsList=[  // make it list for better performance
    section1(),
    Scetion2(),
    Section3(),
  ];

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: AppBar_widget(
                appbarTitle: 'Downloads',
              )),

          body: ListView.separated(
            padding: EdgeInsets.all(20),// listview builder perform better than listview
              itemBuilder: (context, index) => _widgetsList[index],
              separatorBuilder: (context, index) => SizedBox(height: 25,),
              itemCount: _widgetsList.length)
      ),
    );
  }
}



/// top
class section1 extends StatelessWidget {
  const section1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 5,
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: KWhiteColor,
        ),
        Text("Smart Downloads"),
      ],
    );
  }
}
 /// middle
class Scetion2 extends StatelessWidget {
   Scetion2({super.key});
   final List imageList = [
     "https://image.tmdb.org/t/p/w185/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg",
     "https://image.tmdb.org/t/p/w185/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQah7rvAdEmDnkxXIIQ0KqbE0gjKPQvnL77xQ&s",
   ];
  @override
  Widget build(BuildContext context) {
    final Size ssize = MediaQuery.of(context).size;   // Size for device setup
    return Column(
      children: [
        const Text(
          "Introducing Download for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: KWhiteColor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          "We'll download a personalised selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: KgrayColor,
            fontSize: 14,
          ),
        ),
        kheight,
        Container(
          margin: EdgeInsets.all(5),
          width: ssize.width,
          height: ssize.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: ssize.width * 0.25,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),

              DownloadsImageWidget(
                  imageList: imageList[0],
                  margin: EdgeInsets.only(left: 170,),
                  angle: 25,
                  posterSize: Size(ssize.width * 0.35, ssize.width * 0.55),
                 ),

              DownloadsImageWidget(
                  imageList: imageList[1],
                  angle: -20,
                  posterSize: Size(ssize.width * 0.35, ssize.width * 0.55),
                  margin: EdgeInsets.only(right: 170, )),

              DownloadsImageWidget(
                  imageList: imageList[2],
                  radius: 8,
                  posterSize:
                  Size(ssize.width * 0.4, ssize.width * 0.4),
                  margin: EdgeInsets.only(bottom: 10,)),
            ],
          ),
        ),
      ],
    );
  }
}
/// down
class   Section3 extends StatelessWidget {
 const Section3 ({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
    SizedBox(
      width: double.infinity,
      child: MaterialButton(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: () {},
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,),
      child: Text(
      "SetUp",
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: KWhiteColor),
      ),
      ),
      color: KButtonBuleColor,
      ),
    ),
    kheight,
    MaterialButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: () {},
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
      "See what you can download",
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize:15 ,
      color: KBlackColor),
      ),
      ),
      color: KButtonWhiteColor,
      )
    ],
    );
  }
}

/// movie poster setup
class DownloadsImageWidget extends StatelessWidget {
  // extract this from above
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.posterSize,
    this.radius = 10,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size posterSize;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        // rotate image so wrap with Transform.rotate
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius:BorderRadius.circular(radius) ,
          child: Container(
            //color: Colors.black,
           // margin: margin,
            width: posterSize.width,
            height: posterSize.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(
                      imageList,
                    ))),
          ),
        ),
      ),
    );
  }
}

