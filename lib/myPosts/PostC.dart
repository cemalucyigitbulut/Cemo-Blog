import 'package:cemal_blog/tools/contents.dart';
import 'package:flutter/material.dart';
import 'package:cemal_blog/tools/Custom_Tab.dart';
import 'package:cemal_blog/tools/searchBar.dart';
import 'package:cemal_blog/tools/Navigation.dart';



class MobileViewPostC extends StatefulWidget {
  const MobileViewPostC({Key? key}) : super(key: key);

  @override
  _MobileViewPostCState createState() {
    return _MobileViewPostCState();
  }
}

class _MobileViewPostCState extends State<MobileViewPostC> with TickerProviderStateMixin {
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
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child:const Icon(Icons.arrow_upward,color: Colors.black,),
          onPressed:(){
            scrollController.animateTo(0, duration: const Duration(seconds:2 ), curve:Curves.fastOutSlowIn);
          }
      ),
      endDrawer: drawer(),
      key:scaffoldKey,
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
                      Flexible(flex: screenWidth < 769 ?2 :1,child:Container( child: mobileView(),),),
                      Flexible(child:Container(
                        margin: const EdgeInsets.only(top:50),

                        child: Image.asset("assets/3.jpg"),),),
                      Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 50),
                                    child: Text("New Music Sucks or It's Society",style: TextStyle(
                                        fontFamily: "Silkscreen",
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth < 769 ? 25 :45
                                    ),),),
                                  Container(
                                    decoration: const BoxDecoration(
                                        border:Border(
                                            left: BorderSide(width: 0.3,color: Colors.black),
                                            right: BorderSide(width: 0.3,color: Colors.black)
                                        )
                                    ),
                                    margin: const EdgeInsets.only(top: 50,bottom: 50),
                                    padding: const EdgeInsets.only(left:20,right:20),

                                    child: const Text(
                                        "DOES NEW MUSIC SUCK OR IS IT SOCIETY?\n\n"
                                    "As I was browsing through the internet, trying not to waste too much time, I stumbled on an article in The Atlantic by Ted Gioia. In it, Gioia lamented the fact that old music (technically anything older than 18 months), specifically, music from before the year 2000 was outselling and outpacing new music. This got me thinking and wondering if the problem was that new music just sucks.\n\n"
                                  "Maybe my advanced millennial age is showing and I just don’t get the new-fangled Zoomer sounds, but the majority of new music I have heard just sounds Okay at best. Worst still is that even my old favourite artists have overwhelmingly started to make bad music too. I can’t be the only person who hasn’t cared for anything Kanye West has done post-2014.\n\n"
                                  "Periodically I hear new artists whose music I like, but overwhelmingly, they harken back to a sound or style from years gone by. Whether it’s Leon Bridges, The Black Pumas or Lady Wray, the new artists that I really enjoy sound like they could be old artists rediscovered. Even the rappers I like sound like they could be from an older era of hip hop. That’s if I’m not listening to old rap albums anyways. My recent Busta Rhymes discography binge and my Nellyville review tell me that the old school is still the gold school.\n\n"
                                  "That’s not to say that there are absolutely zero recent songs or albums that I like, it’s just that I seldom find myself staying abreast of the newest artists and the newest trends. As my old, beloved artists release new music I’m always there to check it out, but usually only after revisiting their older efforts first. And in some ways, I’m not alone; according to Gioia’s article, investment firms are locked in bidding wars to pick up ageing musical catalogues. At the same time, septuagenarian and older artists are seeing their music return to high demand.\n\n"
                                  "I have a hypothesis for all of this. Everything around us these days is based on materialism; the status of many people is determined by what it is they do and don’t consume. What if consuming media that isn’t attached to your era serves as an outlet or an escape from the drudgery of the current world order? In many ways, the hyper-produced music of today almost perfectly mirrors the overall consumerist society that we live in, but the stripped-down sound of “Play With Fire” by the Rolling Stones is the exact opposite of our current world and vision.\n\n"
                                    "But then again, maybe it’s not all that complicated. Maybe we all are just streaming the music that our parents and older siblings listened to while casually appreciating the more contemporary art. Maybe the nostalgic boom that has pushed people to record collecting is just one of those weird things that happen randomly and without any sort of deep linage. Maybe this is all just chaos, and it’s Stevie Nicks turn now the way it’ll be Ludacris’s turn one day in the far-flung future.\n\n"
                                      ,style: TextStyle(fontFamily: "DynaPuff",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("assets/0.jpg",width: 150,height: 150,),
                                      Container(
                                        margin: const EdgeInsets.only(top:10),
                                        child:
                                        RichText(text: const TextSpan(
                                            text: "Posted By\n",
                                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.black),
                                            children: [
                                              TextSpan(text:"Cemal",style: TextStyle(fontWeight: FontWeight.normal))
                                            ]
                                        )),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top:15),
                                        child:const Text(
                                          "FullStack Developer",
                                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: Column(
                                      children: [
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/postd");
                                        }, child: const Text("Next>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                        const Text("---",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),),
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/postb");
                                        }, child: const Text("<<Previous",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      // Flexible(child: FooterDesktop(),flex:screenWidth < 321 ? 5 : screenWidth < 769 ? 4 : 2)
                    ],
                  ),

                )
            )
        ),
      ),);
  }
  Widget mobileView(){
    screenWidth=MediaQuery.of(context).size.width;
    return Container(
        width: screenWidth,
        color: Colors.grey,
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



class PostC extends StatefulWidget {
  const PostC({Key? key}) : super(key: key);

  @override
  State<PostC> createState() => _PostCState();
}

class _PostCState extends State<PostC> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late double screenWidth;
  late double screenHeight;

  late ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child:const Icon(Icons.arrow_upward,color: Colors.black,),
          onPressed:(){
            scrollController.animateTo(0, duration: const Duration(seconds:2 ), curve:Curves.fastOutSlowIn);
          }
      ),
      backgroundColor: Colors.white,
      body:screenWidth < 1025 ? const MobileViewPostC() : LayoutBuilder(
        builder: (context,constrains)=> SingleChildScrollView(
            child:ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constrains.minHeight,
                ),
                child:IntrinsicHeight(
                  // child:showLoading ? SizedBox(width:screenWidth,height:screenHeight,child: FadeTransition(opacity: _animation,child: Loading(),),) :
                  child:Column(
                    children:<Widget> [
                      Flexible(flex: screenWidth < 769 ?2 :1,child:const SizedBox( height:200,child: Navigation(),),),
                      Flexible(child:Image.asset("assets/3.jpg",width: screenWidth < 769 ? 500 : 1000,),),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/0.jpg",width: 150,height: 150,),
                                  Container(
                                    margin: const EdgeInsets.only(top:10),
                                    child:
                                    RichText(text: const TextSpan(
                                        text: "Posted By\n",
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.black),
                                        children: [
                                          TextSpan(text:"Cemal",style: TextStyle(fontWeight: FontWeight.normal))
                                        ]
                                    )),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top:15),
                                    child:const Text(
                                      "Web Developer",
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 50),
                                    child: Text("New Music Sucks or It's Society",style: TextStyle(
                                        fontFamily: "Silkscreen",
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth < 769 ? 25 :45
                                    ),),),
                                  Container(
                                    decoration: const BoxDecoration(
                                        border:Border(
                                            left: BorderSide(width: 0.3,color: Colors.black),
                                            right: BorderSide(width: 0.3,color: Colors.black)
                                        )
                                    ),
                                    margin: const EdgeInsets.only(top: 50,bottom: 50),
                                    padding: const EdgeInsets.only(left:20,right:20),
                                    width: screenWidth < 769 ? 600 : 1000,
                                    child: const Text(
                                      "DOES NEW MUSIC SUCK OR IS IT SOCIETY?\n\n"
                                          "As I was browsing through the internet, trying not to waste too much time, I stumbled on an article in The Atlantic by Ted Gioia. In it, Gioia lamented the fact that old music (technically anything older than 18 months), specifically, music from before the year 2000 was outselling and outpacing new music. This got me thinking and wondering if the problem was that new music just sucks.\n\n"
                                          "Maybe my advanced millennial age is showing and I just don’t get the new-fangled Zoomer sounds, but the majority of new music I have heard just sounds Okay at best. Worst still is that even my old favourite artists have overwhelmingly started to make bad music too. I can’t be the only person who hasn’t cared for anything Kanye West has done post-2014.\n\n"
                                          "Periodically I hear new artists whose music I like, but overwhelmingly, they harken back to a sound or style from years gone by. Whether it’s Leon Bridges, The Black Pumas or Lady Wray, the new artists that I really enjoy sound like they could be old artists rediscovered. Even the rappers I like sound like they could be from an older era of hip hop. That’s if I’m not listening to old rap albums anyways. My recent Busta Rhymes discography binge and my Nellyville review tell me that the old school is still the gold school.\n\n"
                                          "That’s not to say that there are absolutely zero recent songs or albums that I like, it’s just that I seldom find myself staying abreast of the newest artists and the newest trends. As my old, beloved artists release new music I’m always there to check it out, but usually only after revisiting their older efforts first. And in some ways, I’m not alone; according to Gioia’s article, investment firms are locked in bidding wars to pick up ageing musical catalogues. At the same time, septuagenarian and older artists are seeing their music return to high demand.\n\n"
                                          "I have a hypothesis for all of this. Everything around us these days is based on materialism; the status of many people is determined by what it is they do and don’t consume. What if consuming media that isn’t attached to your era serves as an outlet or an escape from the drudgery of the current world order? In many ways, the hyper-produced music of today almost perfectly mirrors the overall consumerist society that we live in, but the stripped-down sound of “Play With Fire” by the Rolling Stones is the exact opposite of our current world and vision.\n\n"
                                          "But then again, maybe it’s not all that complicated. Maybe we all are just streaming the music that our parents and older siblings listened to while casually appreciating the more contemporary art. Maybe the nostalgic boom that has pushed people to record collecting is just one of those weird things that happen randomly and without any sort of deep linage. Maybe this is all just chaos, and it’s Stevie Nicks turn now the way it’ll be Ludacris’s turn one day in the far-flung future.\n\n"
                                      ,style: TextStyle(fontFamily: "DynaPuff",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/postd");
                                    }, child: const Text("Next>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/postb");
                                    }, child: const Text("<<Previous",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      // Flexible(child: FooterDesktop(),flex:screenWidth < 321 ? 5 : screenWidth < 769 ? 4 : 2)
                    ],
                  ),

                )
            )
        ),
      ),
      persistentFooterButtons: [
        Container(
          color: Colors.grey[350],
          height: 25,
          child:  Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "©Copyright Cemal ÜçYiğit Bulut",
                style: TextStyle(fontFamily: "DynaPuff",color: Colors.black.withOpacity(0.6)),
              ),
            ],
          ),
        )
      ],
    );
  }
}

