import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:project/AllText.dart';
import 'package:project/Modals/introsliderclass.dart';

import '../main.dart';

class IntroSlider extends StatefulWidget {
  @override
  _IntroSliderState createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider>
    with SingleTickerProviderStateMixin {
  List<IntroSliderClass> tabs = [
    IntroSliderClass(

        image:"assets/Introslider/donateimage3.jpg ",
        title: CHANGE_THE_WORLD[LANGUAGE_TYPE],
        subTitle: BE_PART_OF_CHANGE_THE_WORLD[LANGUAGE_TYPE]),
    IntroSliderClass(
        image: "assets/Introslider/donateimage.jpg",
        title: BRING_HAPPINESS[LANGUAGE_TYPE],
        subTitle: HAPPINESS_COMES_FROM_YOUR_ACTIONS[LANGUAGE_TYPE]),
    IntroSliderClass(
        image: "assets/Introslider/donationimage2.jpg",
        title: BUILD_FUTURE[LANGUAGE_TYPE],
        subTitle: BUILD_GREAT_FUTURES_WITH_GREAT_CHARITY[LANGUAGE_TYPE]),
  ];

  TabController tabController;
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
    tabController.addListener(() {
      setState(() {
        currentIndex = tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,

        body: body(),
      ),
    );
  }

  body() {
    return Column(
      children: [
        Expanded(
          child: TabBarView(
            children:
                List.generate(tabs.length, (index) => sliderContent(index)),
            controller: tabController,
          ),
        ),
        bottom(),
        SizedBox(
          height: 1,
        ),
      ],
    );
  }

  bottom() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Row(
              children: List.generate(tabs.length, (index) => indicator(index)),
            ),
          ),
          InkWell(
            onTap: () {
              if (currentIndex < tabs.length - 1) {
                tabController.animateTo(currentIndex + 1,
                    duration: Duration(milliseconds: 800),
                    curve: Curves.easeIn);
              } else {
                //move to another screen
              }
            },
            child: Center(
              child: Container(

                child: Center(
                  child: InkWell(
                    child:ct.regularText(
                      text: NEXT,
                      color: blue,
                      size: 20,

                    ),



                     // color: Lightpurple,
                    ),

                ),
                decoration: BoxDecoration(
                //  color: WHITE,
                  borderRadius: BorderRadius.circular(360),
                ),
                height: 50,
                width: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  sliderContent(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  tabs[index].image,

                  height: 550,
                  width: 400,
                ),
              ),
              /// Image.asset(
              //   "assets/Introslider/frmae_bg-removebg-preview.png",
              // fit: BoxFit.fill,)
            ],
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ct.boldText(
                      text: tabs[index].title,
                     color: blue,
                      size: 35,

                    ),

                    SizedBox(
                      height: 12,
                    ),

                    ct.regularText(
                      text: tabs[index].subTitle,
                      color: Colors.blueGrey.shade800,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  indicator(int index) {
    return Container(

      decoration: BoxDecoration(


       // boxShadow: [BoxShadow(color: Colors.white, blurRadius: 2.0)],
        borderRadius: BorderRadius.circular(360),
        color: currentIndex == index
            ? blue
            : blue.withOpacity(0.2),
      ),
      height: currentIndex == index ? 18 : 14,
      width: currentIndex == index ? 18 : 14,
      margin: EdgeInsets.only(right: 16),
      // margin: EdgeInsets.all(14),
      //   color: currentIndex == index ? PEACH : PEACH.withOpacity(0.2),
    );
  }
}
