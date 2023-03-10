// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:home_interfaces/quiz/quizcrockerrange_ui.dart';
import 'package:home_interfaces/quiz/quizkiuluvalley_ui.dart';
import 'package:home_interfaces/quiz/quizdanumvalley_ui.dart';
import 'package:home_interfaces/quiz/quizkinabalupark_ui.dart';
import 'package:home_interfaces/quiz/quizkokolhill_ui.dart';
import 'package:home_interfaces/quiz/quizmaliaubasin_ui.dart';
import 'package:home_interfaces/quiz/quizselinganisland_ui.dart';
import 'package:home_interfaces/quiz/quizsukaurainforestlodge_ui.dart';
import 'package:home_interfaces/quiz/quizsipadanmabulisland_ui.dart';
import 'package:home_interfaces/quiz/quizdesacattledairyfarm_ui.dart';
import 'package:home_interfaces/quiz/quiztabinwildlife_ui.dart';
import 'package:home_interfaces/quiz/quizimbakcanyon_ui.dart';
import 'aboutus_ui.dart';

class QuizUI extends StatefulWidget {
  const QuizUI({Key? key}) : super(key: key);

  @override
  _QuizUIState createState() => _QuizUIState();
}

class _QuizUIState extends State<QuizUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blueAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUsUI()));
                },
                icon: Image.asset('img/logo/logo.png'),
                iconSize: 50,
              ),
              Spacer(),
              Center(
                child: Text(
                  "Quiz",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
              Spacer(),
              Spacer(),
            ],
          )),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Try attempt this quizes',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_kiuluvalley.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('img/places/Kiulu Valley.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizKiuluValleyUI()));
                                  },
                                  child: Text(
                                    'Kiulu Valley',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_crockerrange.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/places/Crocker Range-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizCrockerRangeUI()));
                                  },
                                  child: Text(
                                    'Crocker Range',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_danumvalley.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('img/places/Danum Valley-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizDanumValleyUI()));
                                  },
                                  child: Text(
                                    'Danum Valley',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_kinabalupark.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/places/Kinabalu Park-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizKinabaluParkUI()));
                                  },
                                  child: Text(
                                    'Kinabalu Park',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_maliaubasin.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('img/places/Maliau Basin-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizMaliauBasinUI()));
                                  },
                                  child: Text(
                                    'Maliau Basin',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_sukaurainforestlodge.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/places/Sukau Rainforest Lodge-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizSukauRainforestLodgeUI()));
                                  },
                                  child: Text(
                                    'Sukau Rainforest Lodge',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                    textAlign: TextAlign.center,
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_mabulisland.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('img/places/Mabul Island-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizMabulIslandUI()));
                                  },
                                  child: Text(
                                    'Sipadan-Mabul Island',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_selinganisland.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/places/Selingan Island-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizSelinganIslandUI()));
                                  },
                                  child: Text(
                                    'Selingan Island',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_tabinwildlife.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/places/Tabin Wildlife-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizTabinWildlifeUI()));
                                  },
                                  child: Text(
                                    'Tabin Wildlife',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_imbakcanyon.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('img/places/Imbak Canyon-1.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizImbakCanyonUI()));
                                  },
                                  child: Text(
                                    'Imbak Canyon',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_kokolhill.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('img/places/kokol hill-3.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizKokolHillUI()));
                                  },
                                  child: Text(
                                    'Kokol Hill Elf',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Expanded(
              flex: 1,
              child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      image: AssetImage(
                          'img/background_ui/background_desacattledairyfarm.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 140,
                        height: 125,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'img/places/2-Desa Cattle Dairy Farm.jpg'),
                                fit: BoxFit.cover),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4)),
                      ),
                      Expanded(
                          child: Center(
                              child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuizDesaCattleDairyFarmUI()));
                                  },
                                  child: Text(
                                    'Desa Cattle Dairy Farm',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))))
                    ],
                  ))),
          Padding(padding: EdgeInsets.only(bottom: 15)),
        ],
      ),
    );
  }
}
