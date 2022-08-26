import 'package:cemal_blog/tools/contents.dart';
import 'package:flutter/material.dart';
import 'package:cemal_blog/tools/Custom_Tab.dart';
import 'package:cemal_blog/tools/searchBar.dart';
import 'package:cemal_blog/tools/Navigation.dart';



class MobileViewPostG extends StatefulWidget {
  const MobileViewPostG({Key? key}) : super(key: key);

  @override
  _MobileViewPostGState createState() {
    return _MobileViewPostGState();
  }
}

class _MobileViewPostGState extends State<MobileViewPostG> with TickerProviderStateMixin {
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

                        child: Image.asset("assets/9.jpg"),),),
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
                                    child: Text("Why Music Sucks Now",style: TextStyle(
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
                                        "Why Music Sucks Right Now\n\n"
                                    "I only bring this up because a buddy, a very talented and supremely frustrated songwriter named Kris Montgomery Pedersen, was wondering why music sucks these days. I wanted to let him know that decent songwriters like him have their work cut out for them these days if they want to become successful.\n\n"
                                    "But first a confession: All too often, in my Hippo Press music column, when I write about newer rock bands, I have no choice but to put lipstick on pigs if I ever hope to get older people to stop listening to music that’s 50 or 60 years old. I often have to lie about the the worth of newer bands a) because they do suck, owing to many factors, most prominently the fact that only well-off people can afford to put out albums, and b) because people — both older and younger — don’t believe there are better things to listen to than Pink Floyd, Zeppelin or whatever. I have to entice them somehow, so I lie, hoping to get them to listen to good newer artists like M83 and Burial (time-saver for brats who’d respond with, “Myeahhh, 2010s much, boomer?”: fuck off).\n\n"
            "Unfortunately it‘s true that if you simply refuse to listen to electronic music, like trance (ex. Tiesto, Armin van Buuren) or darkwave/industrial (Skinny Puppy, KMFDM) or whatever, you’re probably going to be disappointed by “new bands” almost every single time. Rock has been dead for a long, long time. Let’s talk about that.\n\n"
    "The main issue is that America has a completely musically uneducated listening public. The first thing to get cut in public schools is always music programs. In many hilariously underfunded schools (thanks, Betsy DeVos!), stringed instruments have lousy or missing strings, pianos are out-of-tune and things like that. Or there are no real music classes at all, so kids don’t learn the basics, like scales, or even what a bass clef looks like. That’s a not-good thing overall, because getting rid of music classes handicaps kids at an intellectual level.\n\n"
    "Thus people don’t know what clever songs actually even are anymore. But don’t blame people. It’s a system failure. It doesn’t mean people suck, or that there isn’t any good new music out there, it means the system sucks, like that should come as any surprise in today’s free market hell. And that, my little trolls, is the main reason music sucks these days.\n\n"
    "But there’s other shit: Indie rock is awful now because for a few years, the tastemakers in Brooklyn NY’s club/journo scene — mostly non-musically-trained PitchforkMedia writers (who are tasked with the horrifying job of writing 2,000-word essays on new releases from an endless spigot of Beach Boys-pilfering Bon Iver clones and meatless wine-indie bands like Broken Social Scene) and talentless, envious hangers-on based at the Bowery Ballroom rock club literally — literally — demanded that songs not have “hooks,” ie catchy choruses. If your songs had hooks, your band got snubbed, you got lousy reviews, and you didn’t get called back to open for whatever hipster band (Clap Your Hands Say Yeah anyone?) at the Knitting Factory ever again.\n\n"
    "That shit literally happened, I’m not making it up. You still hear it today in indie rock, “hit” songs using bridge-style parts for choruses and never delivering any real dopamine-release moments by launching a chorus part with the home chord of the scale. That was verboten for it seemed like ever and it’s still common practice. Writing catchy, commercially salvageable songs can be complex math, and it’s fun. But catchy tunes stopped selling for a long time, except at the Katy Perry level.\n\n"
    "I do like some hiphop, but if I allow myself to drift into it, it simply reads like flash-frozen vibe, stuff to smoke weed to during overlong drives (aside to older pot-heads: did you know they don’t call it ‘bogarting’ anymore; now it’s called ‘chiefing’?). No tension, no release, just 3-minute ringtones of “Hey man, anyone can get rich” free-market bullshit. And whatever, too much “gangsta rap” hasn’t been made by real drug dealers anyway, just by tedious, silver-spoon Marketing major dingbats with Bachelor’s degrees. Ever notice that reviews of hiphop albums always focus on beefs and whom the artist is banging, never about musical quality?\n\n"
    "Even worse: There are basically 2 or 3 guys writing every single Billboard hit, every single one. Look it up; I’m too lazy to do it since this is just a Medium piece anyway (anyone out there seeing this, like, anyone at all?). They write Taylor Swift’s songs, Ariana Grande’s songs, Echosmith’s songs, Bieber’s stupid songs, all of them. Those guys are omnipotent gods lording over the sick joke that pop music has become, not that it wasn’t already. Can you even imagine the gack-fueled sex parties those guys have, getting up from their waterbed full of porn stars once every fifteen minutes to jot down some stupid lyric for a phoned-in Kesha song before they forget?\n\n"
    "Hard rock is a corpse too, of course, and not just because the middle class has surrendered any last vestige of rebelliousness in exchange for cheap-ish Netflix subscriptions and a jay-oh-bee. I mean, yeah, you have Greta Van Fleet trying to be Led Zeppelin, just cold blatantly ripping off their old songs, but that’s… do you know what “depleted soil” means? Those Lego-assembling morons obviously got into Zeppelin by listening to older Zep-ripoff bands like Fastway and Kingdom Come. It’s third-generation garbage. It’s depleted soil.\n\n"
    "You want something newer than those goddam 50-year-old Zeppelin songs? Good, then don’t waste your YouTube-To-MP3 pirating time ripping Greta Van Fleet MP3s, go listen to Fantastic Negrito. That guy is/was taking a real-life Zep approach, ie borrowing from folk/tribal/rap/whatever genres that had nothing to do with hard rock in order to slap together some really clever kick-ass songs. Remember when Zep put out Led Zeppelin III, and really got into the business of “borrowing” from Leadbelly and Stephen Foster and whatever long-forgotten 1820s banjo-picker (I know you don’t, but I like posing rhetorical questions)? Fantastic Negrito is doing the same thing, but with different ingredients. If you really insist on listening to oldschool rock, I fucking beg you to try Fantastic Negrito on for size. He started out doing a Prince trip, so you’ll have to dig, but the guy’s a genius. Maybe start with his The Last Days of Oakland album. You’ll thank me later, I swear to God.\n\n"
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
                                          Navigator.pushReplacementNamed(context, "/posth");
                                        }, child: const Text("Next>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                        const Text("---",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),),
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/postf");
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



class PostG extends StatefulWidget {
  const PostG({Key? key}) : super(key: key);

  @override
  State<PostG> createState() => _PostGState();
}

class _PostGState extends State<PostG> with TickerProviderStateMixin {

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
      body:screenWidth < 1025 ? const MobileViewPostG() : LayoutBuilder(
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
                      Flexible(child:Image.asset("assets/9.jpg",width: screenWidth < 769 ? 500 : 1000,),),
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
                                    child: Text("Why Music Sucks Now",style: TextStyle(
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
                                    child: const Text("Why Music Sucks Right Now\n\n"
                                        "I only bring this up because a buddy, a very talented and supremely frustrated songwriter named Kris Montgomery Pedersen, was wondering why music sucks these days. I wanted to let him know that decent songwriters like him have their work cut out for them these days if they want to become successful.\n\n"
                                        "But first a confession: All too often, in my Hippo Press music column, when I write about newer rock bands, I have no choice but to put lipstick on pigs if I ever hope to get older people to stop listening to music that’s 50 or 60 years old. I often have to lie about the the worth of newer bands a) because they do suck, owing to many factors, most prominently the fact that only well-off people can afford to put out albums, and b) because people — both older and younger — don’t believe there are better things to listen to than Pink Floyd, Zeppelin or whatever. I have to entice them somehow, so I lie, hoping to get them to listen to good newer artists like M83 and Burial (time-saver for brats who’d respond with, “Myeahhh, 2010s much, boomer?”: fuck off).\n\n"
                                        "Unfortunately it‘s true that if you simply refuse to listen to electronic music, like trance (ex. Tiesto, Armin van Buuren) or darkwave/industrial (Skinny Puppy, KMFDM) or whatever, you’re probably going to be disappointed by “new bands” almost every single time. Rock has been dead for a long, long time. Let’s talk about that.\n\n"
                                        "The main issue is that America has a completely musically uneducated listening public. The first thing to get cut in public schools is always music programs. In many hilariously underfunded schools (thanks, Betsy DeVos!), stringed instruments have lousy or missing strings, pianos are out-of-tune and things like that. Or there are no real music classes at all, so kids don’t learn the basics, like scales, or even what a bass clef looks like. That’s a not-good thing overall, because getting rid of music classes handicaps kids at an intellectual level.\n\n"
                                        "Thus people don’t know what clever songs actually even are anymore. But don’t blame people. It’s a system failure. It doesn’t mean people suck, or that there isn’t any good new music out there, it means the system sucks, like that should come as any surprise in today’s free market hell. And that, my little trolls, is the main reason music sucks these days.\n\n"
                                        "But there’s other shit: Indie rock is awful now because for a few years, the tastemakers in Brooklyn NY’s club/journo scene — mostly non-musically-trained PitchforkMedia writers (who are tasked with the horrifying job of writing 2,000-word essays on new releases from an endless spigot of Beach Boys-pilfering Bon Iver clones and meatless wine-indie bands like Broken Social Scene) and talentless, envious hangers-on based at the Bowery Ballroom rock club literally — literally — demanded that songs not have “hooks,” ie catchy choruses. If your songs had hooks, your band got snubbed, you got lousy reviews, and you didn’t get called back to open for whatever hipster band (Clap Your Hands Say Yeah anyone?) at the Knitting Factory ever again.\n\n"
                                        "That shit literally happened, I’m not making it up. You still hear it today in indie rock, “hit” songs using bridge-style parts for choruses and never delivering any real dopamine-release moments by launching a chorus part with the home chord of the scale. That was verboten for it seemed like ever and it’s still common practice. Writing catchy, commercially salvageable songs can be complex math, and it’s fun. But catchy tunes stopped selling for a long time, except at the Katy Perry level.\n\n"
                                        "I do like some hiphop, but if I allow myself to drift into it, it simply reads like flash-frozen vibe, stuff to smoke weed to during overlong drives (aside to older pot-heads: did you know they don’t call it ‘bogarting’ anymore; now it’s called ‘chiefing’?). No tension, no release, just 3-minute ringtones of “Hey man, anyone can get rich” free-market bullshit. And whatever, too much “gangsta rap” hasn’t been made by real drug dealers anyway, just by tedious, silver-spoon Marketing major dingbats with Bachelor’s degrees. Ever notice that reviews of hiphop albums always focus on beefs and whom the artist is banging, never about musical quality?\n\n"
                                        "Even worse: There are basically 2 or 3 guys writing every single Billboard hit, every single one. Look it up; I’m too lazy to do it since this is just a Medium piece anyway (anyone out there seeing this, like, anyone at all?). They write Taylor Swift’s songs, Ariana Grande’s songs, Echosmith’s songs, Bieber’s stupid songs, all of them. Those guys are omnipotent gods lording over the sick joke that pop music has become, not that it wasn’t already. Can you even imagine the gack-fueled sex parties those guys have, getting up from their waterbed full of porn stars once every fifteen minutes to jot down some stupid lyric for a phoned-in Kesha song before they forget?\n\n"
                                        "Hard rock is a corpse too, of course, and not just because the middle class has surrendered any last vestige of rebelliousness in exchange for cheap-ish Netflix subscriptions and a jay-oh-bee. I mean, yeah, you have Greta Van Fleet trying to be Led Zeppelin, just cold blatantly ripping off their old songs, but that’s… do you know what “depleted soil” means? Those Lego-assembling morons obviously got into Zeppelin by listening to older Zep-ripoff bands like Fastway and Kingdom Come. It’s third-generation garbage. It’s depleted soil.\n\n"
                                        "You want something newer than those goddam 50-year-old Zeppelin songs? Good, then don’t waste your YouTube-To-MP3 pirating time ripping Greta Van Fleet MP3s, go listen to Fantastic Negrito. That guy is/was taking a real-life Zep approach, ie borrowing from folk/tribal/rap/whatever genres that had nothing to do with hard rock in order to slap together some really clever kick-ass songs. Remember when Zep put out Led Zeppelin III, and really got into the business of “borrowing” from Leadbelly and Stephen Foster and whatever long-forgotten 1820s banjo-picker (I know you don’t, but I like posing rhetorical questions)? Fantastic Negrito is doing the same thing, but with different ingredients. If you really insist on listening to oldschool rock, I fucking beg you to try Fantastic Negrito on for size. He started out doing a Prince trip, so you’ll have to dig, but the guy’s a genius. Maybe start with his The Last Days of Oakland album. You’ll thank me later, I swear to God.\n\n"

                                      ,style: TextStyle(fontFamily: "DynaPuff",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/posth");
                                    }, child: const Text("Next>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/postf");
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