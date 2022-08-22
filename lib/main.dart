import 'package:cemal_blog/Pages/Home.dart';
import 'package:cemal_blog/Pages/Categories.dart';
import 'package:cemal_blog/Pages/About.dart';
import 'package:cemal_blog/Pages/Contact.dart';
import 'package:flutter/material.dart';
import 'package:cemal_blog/myPosts/PostA.dart';
import 'package:cemal_blog/myPosts/PostB.dart';
import 'package:cemal_blog/myPosts/PostC.dart';
import 'package:cemal_blog/myPosts/PostD.dart';
import 'package:cemal_blog/myPosts/PostE.dart';
import 'package:cemal_blog/myPosts/PostF.dart';
import 'package:cemal_blog/myPosts/PostG.dart';
import 'package:cemal_blog/myPosts/PostH.dart';



void main() {
  runApp(MaterialApp(
  initialRoute: '/home',
    routes: {
      '/home':(context) => const Home(),
      '/categories':(context) => const Categories(),
      '/about':(context) => const About(),
      '/contact':(context) => const Contact(),
      '/posta':(context) => const PostA(),
      '/postb':(context) => const PostB(),
      '/postc':(context) => const PostC(),
      '/postd':(context) => const PostD(),
      '/poste':(context) => const PostE(),
      '/postf':(context) => const PostF(),
      '/postg':(context) => const PostG(),
      '/posth':(context) => const PostH(),
     },
  ));
}

