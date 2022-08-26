import 'package:cemal_blog/tools/contents.dart';
import 'package:flutter/material.dart';
import 'package:cemal_blog/tools/Custom_Tab.dart';
import 'package:cemal_blog/tools/searchBar.dart';
import 'package:cemal_blog/tools/Navigation.dart';



class MobileViewPostH extends StatefulWidget {
  const MobileViewPostH({Key? key}) : super(key: key);

  @override
  _MobileViewPostHState createState() {
    return _MobileViewPostHState();
  }
}

class _MobileViewPostHState extends State<MobileViewPostH> with TickerProviderStateMixin {
  late double screenWidth;
  late double screenHeight;

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

    late ScrollController scrollController = ScrollController();

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

                        child: Image.asset("assets/10.jpg"),),),
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
                                    child: Text("Why Breaking Bad Good",style: TextStyle(
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
                                        "Why 'Breaking Bad' the greatest TV series of all time\n\n"
                                    "The viewing experience is extremely personal and should not be meddled with. Your favourites might not resonate with mine, and that is absolutely fine. However, when we talk about some cult favourite series that are now considered as some of the all-time greats, Breaking Bad will undoubtedly feature in most lists.\n\n"
                                    "Those who have never had the pleasure of watching the Breaking Bad might wonder, “What makes a show which is apparently about a bald chemistry teacher so special?” Well, the answer lies in the question itself. The bald chemistry teacher makes the show the literal masterpiece that it is.\n\n"
                                    "Walter White is undergoing a mid-life crisis. He suffers from cancer, feels cheated and takes resort to measures of ridiculous proportions by cooking meth to sustain himself and his family. How cool is that? To justify our pick as the best TV show ever, let us first get down to the technical nitty-gritty. Apart from the stunning visuals and incredible cinematography, the director Vince Gilligan’s genius shine through which each and every detailed episode and layered character arcs. With unique dialogues and complex references to chemistry, this show is devoured by nerds who dream of a transformation like White himself, a mundane everyman to a stellar drug kingpin.\n\n"
                                    "The series is poetic from the very start to the end with brilliant wide-ranging imagery. On that note, it is essential to pay heed to how the creators stopped at an appropriate moment, ending with Walter’s death, unlike another fan favourites which had the most disappointing finale in the history of TV shows (Game of Thrones fans, do not come for me). As the line between a protagonist and antagonist begin blurring with Walter White’s complex character arc taking action, the show plays well with the psychological complexities of the character. White’s timid and ordinary demeanour gradually makes way for his ruthless and egoistic persona that reeks of megalomania and sociopathic tendencies. He is a pathetic hero who is dejected and cheated; he is envious and manipulative, leaving the audience to question their love and loyalty. He is an ultimate grey character who makes your quintessential high school chemistry teacher Mr. Brown seem paltry and insignificant.\n\n"
                                      "Walter and Jesse Pinkman’s camaraderie is one fantastic facet of the show. Although Pinkman is often used by White as a pawn, they are frenemies, with a heartbreaking partners-in-crime relationship. Pinkman’s development is noteworthy as well; his transformation from a reckless and careless addict to a caring man whose actions are well-balanced with his emotions, and his desire to settle down to a more peaceful life is heartwarming. Walter White’s demise is literally poetry in motion. With his never-give-up attitude, Walter ultimately dies surrounded by his one true love; the meth machines. The process of making meth gave him a renewed sense of hope for life as well as took it away from it – he owed everything to the machines. It is considered one of the greatest endings on TV.\n\n"
                                  "If you have not watched Breaking Bad, it is nearly impossible to explain why the show is kept on such a high pedestal. Walter White’s enigmatic presence coupled with brilliant cinematic sorcery brings out an enriching experience that can only be seen and felt firsthand. This article should propel your need to watch the series even more than before, it should serve its purpose of trying to arouse in you the desire to be consumed by a gripping world of chemistry, drugs, family and insanity which will both warm your hearts and send chills down your spine.\n\n"
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
                                          Navigator.pushReplacementNamed(context, "/posta");
                                        }, child: const Text("Next>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                        const Text("---",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),),
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/postg");
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



class PostH extends StatefulWidget {
  const PostH({Key? key}) : super(key: key);

  @override
  State<PostH> createState() => _PostHState();
}

class _PostHState extends State<PostH> with TickerProviderStateMixin {

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
          child:const Icon(Icons.arrow_upward,color: Colors.black,),
          onPressed:(){
            scrollController.animateTo(0, duration: const Duration(seconds:2 ), curve:Curves.fastOutSlowIn);
          }
      ),
      body:screenWidth < 1025 ? const MobileViewPostH() : LayoutBuilder(
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
                      Flexible(child:Image.asset("assets/10.jpg",width: screenWidth < 769 ? 500 : 1000,),),
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
                                    child: Text("Why Breaking Bad Good",style: TextStyle(
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
                                    child: const Text("Why 'Breaking Bad' the greatest TV series of all time\n\n"
                                        "The viewing experience is extremely personal and should not be meddled with. Your favourites might not resonate with mine, and that is absolutely fine. However, when we talk about some cult favourite series that are now considered as some of the all-time greats, Breaking Bad will undoubtedly feature in most lists.\n\n"
                                        "Those who have never had the pleasure of watching the Breaking Bad might wonder, “What makes a show which is apparently about a bald chemistry teacher so special?” Well, the answer lies in the question itself. The bald chemistry teacher makes the show the literal masterpiece that it is.\n\n"
                                        "Walter White is undergoing a mid-life crisis. He suffers from cancer, feels cheated and takes resort to measures of ridiculous proportions by cooking meth to sustain himself and his family. How cool is that? To justify our pick as the best TV show ever, let us first get down to the technical nitty-gritty. Apart from the stunning visuals and incredible cinematography, the director Vince Gilligan’s genius shine through which each and every detailed episode and layered character arcs. With unique dialogues and complex references to chemistry, this show is devoured by nerds who dream of a transformation like White himself, a mundane everyman to a stellar drug kingpin.\n\n"
                                        "The series is poetic from the very start to the end with brilliant wide-ranging imagery. On that note, it is essential to pay heed to how the creators stopped at an appropriate moment, ending with Walter’s death, unlike another fan favourites which had the most disappointing finale in the history of TV shows (Game of Thrones fans, do not come for me). As the line between a protagonist and antagonist begin blurring with Walter White’s complex character arc taking action, the show plays well with the psychological complexities of the character. White’s timid and ordinary demeanour gradually makes way for his ruthless and egoistic persona that reeks of megalomania and sociopathic tendencies. He is a pathetic hero who is dejected and cheated; he is envious and manipulative, leaving the audience to question their love and loyalty. He is an ultimate grey character who makes your quintessential high school chemistry teacher Mr. Brown seem paltry and insignificant.\n\n"
                                        "Walter and Jesse Pinkman’s camaraderie is one fantastic facet of the show. Although Pinkman is often used by White as a pawn, they are frenemies, with a heartbreaking partners-in-crime relationship. Pinkman’s development is noteworthy as well; his transformation from a reckless and careless addict to a caring man whose actions are well-balanced with his emotions, and his desire to settle down to a more peaceful life is heartwarming. Walter White’s demise is literally poetry in motion. With his never-give-up attitude, Walter ultimately dies surrounded by his one true love; the meth machines. The process of making meth gave him a renewed sense of hope for life as well as took it away from it – he owed everything to the machines. It is considered one of the greatest endings on TV.\n\n"
                                        "If you have not watched Breaking Bad, it is nearly impossible to explain why the show is kept on such a high pedestal. Walter White’s enigmatic presence coupled with brilliant cinematic sorcery brings out an enriching experience that can only be seen and felt firsthand. This article should propel your need to watch the series even more than before, it should serve its purpose of trying to arouse in you the desire to be consumed by a gripping world of chemistry, drugs, family and insanity which will both warm your hearts and send chills down your spine.\n\n"
                                      ,style: TextStyle(fontFamily: "DynaPuff",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/posta");
                                    }, child: const Text("Next>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/postg");
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
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ],
          ),
        )
      ],
    );
  }
}