import 'package:cemal_blog/tools/contents.dart';
import 'package:flutter/material.dart';
import 'package:cemal_blog/tools/Custom_Tab.dart';
import 'package:cemal_blog/tools/searchBar.dart';
import 'package:cemal_blog/tools/Navigation.dart';
import 'package:cemal_blog/tools/footer.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';


class MobileViewAbout extends StatefulWidget {
  const MobileViewAbout({Key? key}) : super(key: key);

  @override
  _MobileViewAboutState createState() {
    return _MobileViewAboutState();
  }
}

class _MobileViewAboutState extends State<MobileViewAbout> with TickerProviderStateMixin {
  late double screenWidth;
  late double screenHeight;

  late ScrollController scrollController = ScrollController();

  var scaffoldKey =GlobalKey<ScaffoldState>();

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
    screenWidth=MediaQuery.of(context).size.width;
    screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      endDrawer: drawer(),
        key:scaffoldKey,
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            child:const Icon(Icons.arrow_upward,color: Colors.black,),
            onPressed:(){
              scrollController.animateTo(0, duration: const Duration(seconds:2 ), curve:Curves.fastOutSlowIn);
            }
        ),
        body: FooterView(
            footer: Footer(
                child:Column(
                  children: const [
                    Text('Copyright ©2022, All Rights Reserved.',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0, color: Color(0xFF162A49)),),
                    Text('Cemal Üçyiğit Bulut',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0,color: Color(0xFF162A49)),),
                  ],
                )
            ),
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  LayoutBuilder(
                    builder: (context,constrains)=> SingleChildScrollView(
                      controller: scrollController,
                        child:ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constrains.minHeight,
                            ),
                            child:IntrinsicHeight(
                               // child:showLoading ? SizedBox(width:screenWidth,height:screenHeight,child: FadeTransition(opacity: _animation,child: Loading(),),):
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.stretch,
                               children:<Widget> [
                                 Flexible(child: mobileView(),),
                                 Flexible(child:  Column(
                                   children: [
                                     SizedBox(
                                       height:screenWidth < 321 ? 700 : 600,
                                       child: Image.asset("assets/4.jpg", height: screenWidth < 321 ? 700 : 600,  width: screenWidth < 321 ? 700 : 500),),
                                     Container(
                                       margin: const EdgeInsets.only(top: 50),
                                       child: const Text("About Me",style: TextStyle(
                                         fontFamily: "SilkScreen",
                                         fontWeight: FontWeight.bold,
                                         fontSize: 30,
                                       ),),),
                                     Container(
                                       margin: const EdgeInsets.only(top: 50),
                                       height: screenWidth < 426 ? 450 : 300,
                                       width:screenWidth < 426 ? 300 : 600,
                                       child: Text("My Name is Cemal ,i born in island named cyprus (or by real name name Tartarus) "
                                           "i am now studying Computer Science at Emu(Eastern Mediterranean University)."
                                       "What kind of person i am ? , well i can say that i am not that optimistic person and i like quiet , dark , and not crowded places."
                                     "I can say that i both love and hate Cyprus, I love everything about the island itself but i hate everything about the government it has."
                                     "I mostly prefer to be with my friends or my family members(which include my uncle's or aunts etc. as long as they dont come with their annoying kid)."
                                         ,style: TextStyle(fontFamily: "DynaPuff",fontSize: screenWidth < 426 ? 20 :25,letterSpacing: 1.2),),
                                     ),
                                     Container(
                                       height: screenWidth < 426 ? 450 : 300,
                                       width:screenWidth < 426 ? 300 : 600,
                                       margin: const EdgeInsets.only(top: 50),
                                       child: Text(
                                         " My interest's are video games , quirky and silly animation movies , i like any movie as long as its not a \"romance movie\" or \"superhero movie\" or \"painfully bad action movie with unstopable main character\" or \"from a real story movie \" and \"history movie\". my music taste is random selection of chill , rock , synthwave or any good video game soundtrack."
                                       ,style: TextStyle(fontFamily: "DynaPuff",fontSize: screenWidth < 426 ? 20 :25,letterSpacing: 1.2),),
                                     )
                                   ],
                                 ),),
                               ],
                             ),

                            )
                        )
                    ),
                  )
                ],
              ),
            ]

        ));
  }
  Widget mobileView(){
    screenWidth=MediaQuery.of(context).size.width;
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



class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;

  late ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){
          scrollController.animateTo(0, duration: const Duration(seconds:2 ), curve:Curves.fastOutSlowIn);
        },
        child:const Icon(Icons.arrow_upward,color: Colors.black,),
      ),
        body:screenWidth < 769 ? const MobileViewAbout() : LayoutBuilder(
            builder: (context,constrains)=> SingleChildScrollView(
              controller: scrollController,
                child:ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constrains.minHeight,
                    ),
                    child:IntrinsicHeight(
                      // child:showLoading ? SizedBox(width:screenWidth,height:screenHeight,child: FadeTransition(opacity: _animation,child: Loading(),),) :
                      child:Column(
                        children:<Widget> [
                          Flexible(flex: screenWidth < 769 ? 2 :1,child:const Navigation(),),
                          Flexible(flex: screenWidth < 769 ? 1 : 4,child:  Column(
                            children: [
                              Image.asset("assets/4.jpg",width: screenWidth < 769 ? 500 : 1000,),
                              Container(
                                margin: const EdgeInsets.only(top: 50),
                                child: Text("About My Story",style: TextStyle(
                                    fontFamily: "Silkscreen",
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth < 769 ? 25 :45
                                ),),),
                              Container(
                                margin: const EdgeInsets.only(top: 50),
                                width: screenWidth < 769 ? 600 : 1000,
                                child: const Text("My Name is Cemal ,i born in island named cyprus (or by real name name Tartarus) "
                                    "i am now studying Computer Science at Emu(Eastern Mediterranean University)."
                                    "What kind of person i am ? , well i can say that i am not that optimistic person and i like quiet , dark , and not crowded places."
                                    "I can say that i both love and hate Cyprus, I love everything about the island itself but i hate everything about the government it has."
                                    "I mostly prefer to be with my friends or my family members(which include my uncle's or aunts etc. as long as they dont come with their annoying kid)."
                                    ,style: TextStyle(fontFamily: "DynaPuff",fontSize: 25,letterSpacing: 1.2),),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 50),
                                width: screenWidth < 769 ? 600 : 1000,
                                child: const Text(" My interest's are video games , quirky and silly animation movies , i like any movie as long as its not a \"romance movie\" or \"superhero movie\" or \"painfully bad action movie with unstopable main character\" or \"from a real story movie \" and \"history movie\". my music taste is random selection of chill , rock , synthwave or any good video game soundtrack.",style: TextStyle(fontFamily: "DynaPuff",fontSize: 25,letterSpacing: 1.2),),
                              )
                            ],
                          ),),
                          const Flexible(flex: 1,child: FooterDesktop(),)
                          // Flexible(child: Footer(),flex:screenWidth < 321 ? 5 : screenWidth < 769 ? 4 : 2)
                        ],
                      ),

                    )
                )
            ),
          ),
    );
  }
}