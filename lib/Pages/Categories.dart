import 'package:cemal_blog/tools/contents.dart';
import 'package:flutter/material.dart';
import 'package:cemal_blog/tools/Custom_Tab.dart';
import 'package:cemal_blog/tools/searchBar.dart';
import 'package:cemal_blog/tools/CategoriesNavigation.dart';



class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;

  List<ContentView> contentViews =[
    ContentView(tab: const Custom_Tab(title:"Home"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
    ContentView(tab: const Custom_Tab(title:"Categories"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
    ContentView(tab: const Custom_Tab(title:"About"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
    ContentView(tab: const Custom_Tab(title:"Contact"), content: Center(
      child: Container(color:Colors.black,width: 100,height:100,),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      endDrawer: drawer(),
      key: scaffoldKey,
      body: LayoutBuilder(
        builder: (context,constrains)=> SingleChildScrollView(
            child:ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constrains.minHeight,
                ),
                child:IntrinsicHeight(
                  // child:showLoading ? SizedBox(width:screenWidth,height:screenHeight,child: FadeTransition(opacity: _animation,child: Loading(),),) :
                  child:Column(
                    children:<Widget> [
                      Flexible(flex: 4,child: screenWidth > 768 ? const Navigation() : mobileView(),),
                      const Flexible(child: Text("Video Games",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "Silkscreen",color:Colors.white),),),
                      Flexible(child: Column(
                        children: [
                          TextButton(child:const Text("Video Game Industry",style: TextStyle(fontFamily:"DynaPuff",color:Colors.white),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/poste");
                          },),
                          TextButton(child:const Text("Why Corporations are Destroying Video Games",style: TextStyle(fontFamily:"DynaPuff",color:Colors.white),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/postf");
                          }),
                        ],)),
                      const Flexible(child: Text("Animation Movies",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "Silkscreen",color:Colors.white),),),
                      Flexible(child: Column(
                        children: [
                          TextButton(child:const Text("Why 'Better Call Saul' Was Unique",style: TextStyle(fontFamily:"DynaPuff",color:Colors.white),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/posta");
                          },),
                          TextButton(child:const Text("Bad Animation Movie",style: TextStyle(fontFamily:"DynaPuff",color:Colors.white),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/postb");
                          }),
                          TextButton(child:const Text("Bad Movie",style: TextStyle(fontFamily:"DynaPuff",color:Colors.white),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/postd");
                          }),
                          TextButton(child:const Text("Why Breaking Bad Good",style: TextStyle(fontFamily:"DynaPuff",color:Colors.white),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/posth");
                          }),
                        ],)),
                      const Flexible(child: Text("Music",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: "Silkscreen",color:Colors.white),),),
                      Flexible(child: Column(
                        children: [
                          TextButton(child:const Text("New Music Sucks or It's Society",style: TextStyle(fontFamily:"DynaPuff",color:Colors.white),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/postc");
                          },),
                          TextButton(child:const Text("Why Music Sucks Now",style: TextStyle(fontFamily:"DynaPuff",color:Colors.white),),onPressed: (){
                            Navigator.pushReplacementNamed(context,"/postg");
                          }),

                        ],))
                    ],
                  ),

                )
            )
        ),
      ),
    );
  }

  Widget buildNumber(String img,String title,String text,String by,String route,BuildContext context){
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Container(
          decoration: const BoxDecoration(
            border: Border(
                right: BorderSide(width: 0.1,color:Colors.black12,),
                bottom:BorderSide(width: 0.1,color:Colors.black12,) ),
          ),
          child:GridTile(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: screenWidth < 769 ? CrossAxisAlignment.center:CrossAxisAlignment.start,
                children: [
                  Center(child: Container(
                    width:  400,
                    height:screenWidth < 769 ? 500 :200,
                    // padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(img),
                            fit:BoxFit.fill
                        )
                    ),
                  ),),
                  TextButton(onPressed: (){
                    Navigator.pushReplacementNamed(context, "/${route.toLowerCase()}");
                  }, child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize:screenWidth < 426 ? 30 : 38,color: Colors.black),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: screenWidth < 321 ? 10 : screenWidth < 426 ? 0 :10,bottom:screenWidth < 321? 10 : screenWidth < 426 ? 0 :10),
                    child: RichText(text: TextSpan(
                        text: "Posted By ",
                        style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                        children: [
                          TextSpan(text:by,style: const TextStyle(fontWeight: FontWeight.normal))
                        ]
                    )),
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(text,style: TextStyle(fontFamily: "DynaPuff",fontSize: screenWidth < 426 ? 20 : 22),),
                  ),
                ],
              )
          )
      ),
    );
  }
  Widget mobileView(){
    return Container(
        width: screenWidth,
        color: Colors.black,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Logo.png',),
                      fit:BoxFit.fill
                  )
              ),
            ),
            Row(
              children: [IconButton(onPressed: () => scaffoldKey.currentState?.openEndDrawer(),
                iconSize: screenWidth*0.08, icon: const Icon(Icons.menu_rounded),
                color: Colors.white,),
                IconButton(onPressed: (){
                  showSearch(
                    context: context,
                    delegate:MySearchDelegate(),
                  );
                }, icon:  Icon(Icons.search,color: Colors.white,size: screenWidth*0.05,))],
            ),

          ],
        )
    );
  }

  Widget drawer(){
    return Drawer(
      child: ListView(
          children: [
            Container(height: screenHeight * 0.1,)
          ] + contentViews.map((e) => Container(
            child: ListTile(title:Text(e.tab.title),onTap:(){
              Navigator.pushReplacementNamed(context, "/${e.tab.title.toLowerCase()}");
            }),
          )).toList()
      ),
    );
  }
}