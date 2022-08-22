import 'package:cemal_blog/tools/contents.dart';
import 'package:flutter/material.dart';
import 'package:cemal_blog/tools/Custom_Tab.dart';
import 'package:cemal_blog/tools/searchBar.dart';
import 'package:cemal_blog/tools/Navigation.dart';



class MobileViewPostD extends StatefulWidget {
  const MobileViewPostD({Key? key}) : super(key: key);

  @override
  _MobileViewPostDState createState() {
    return _MobileViewPostDState();
  }
}

class _MobileViewPostDState extends State<MobileViewPostD> with TickerProviderStateMixin {
  late double screenWidth;
  late double screenHeight;

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late ScrollController scrollController = ScrollController();

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

                        child: Image.asset("assets/7.jpg"),),),
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
                                    child: Text("Bad Movie",style: TextStyle(
                                        fontFamily: "DMSerifText",
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
                                      "Why bad films aren't getting the disrespect they deserve\n\n"
                                          "Moviegoers are always talking about films or directors that do not get the respect they deserve. Brilliant films are slighted at the Oscars, while tripe and offal is honoured, they say. Audiences go wild over inane cartoons, while brilliant animated films from Japan or Iran remain little more than obscure cult favourites, known only to a select few. Everyone sees the mass-produced Hollywood trash; nobody sees the hidden, low-budget, indie, foreign gems. It’s just not fair. And it’s not fair for one simple reason: because the films did not get the respect they deserved.\n\n"
                                          "There are, on the other hand, films that do get the respect they deserve. They get exactly the respect they deserve. That is: they get no respect whatsoever. When Adam Sandler’s new film Pixels opened a few weeks ago, both the critics and the public jumped all over it. It was stupid. It was trash. It was Sandler’s fourth bomb in a row. It was pathetic. “Ho-ho-ho!” said the critics. “Ho-ho-ho!” the public agreed. Perhaps, at long last, Sandler would go away and take his stupid, post-prepubescent films with him. But there is a key point to bear in mind here: Pixels may have been a flop, but it was a high-profile flop. It was not a flop that quietly came and went without anyone noticing. It got the disrespect it deserved.\n\n"
                                          "The point is that big-budget bad films such as Pixels get released theatrically, they get reviewed, they get at least a one-week run in cinemas – longer if they are really big-budget films – they are mocked and ridiculed, and then, and only then, do they disappear. If they are really, really bad films such as Gigli or Mars Needs Moms or most recently The Lone Ranger, they enter the Pantheon of the Preternaturally Putrescent, the Temple of the Timelessly Trashy – movies so bad that people will still be talking about them decades after their release. These films may be gone but they are not forgotten.\n\n"
                                          "But what about films that do not get the disrespect they deserve? Once upon a time, just about every movie was released commercially, and spent a full week in cinemas. If it was awful, it was savaged by critics, mocked by talkshow hosts, and ridiculed by the public, who – while not bothering to see it – talked among themselves about how wretched it was anyway. Awful movies became a key feature of the public lingua franca, with everyone trading wisecracks about films they would never actually see. The Postman. Showgirls. Xanadu. Going way back, even Cleopatra. These movies were terrible. These movies were stupid. These movies had no reason to exist. Be that as it may, people knew of their existence. They didn’t simply come and go without anyone noticing. They were like Attila the Hun’s plundering butchers or Genghis Khan’s murderous Golden Hordes. They were mean, they were horrible, they were no fun. But they certainly got everyone’s attention.\n\n"
                                          "Now, however, these films are rarely released theatrically and, if they are, only play in a handful of cinemas as a face-saving gesture on the part of the studio. Such movies are quietly cast out into the Netflix darkness, and never stir up any real public conversation. Only hardcore aficionados of bad films ever get to see them.\n\n"
                                          "Movies are something that we all share. Motion pictures are a subject, unlike politics or religion or gluten-free pastries, that we can all discuss passionately without getting angry and violent about it. We can joke about movies in a way we cannot joke about other subjects because we have nothing personally invested in the films themselves.\n\n"
                                          "Moreover, many of us love bad films. But a bad film that no one sees is like a tree that falls in a forest that no one knows about. I have just read that 47 Ronin is estimated to be the single biggest box-office failure of all time. Bigger than John Carter. Bigger than The Lone Ranger. But unlike those other films, nobody but nobody saw 47 Ronin. Just me and my friend Nathaniel and four Japanese film buffs in Limoges. Not even my son went to see it, and he’ll watch anything.\n\n"
                                          "This is a tragedy. A bad film that no one ever sees is like a beautiful sunset wasted on the blind, a gorgeous symphony wasted on the deaf, a fabulous meal wasted on someone who just joined Weight Watchers. A bad film is rare, precious and beautiful. But mostly bad. Recently I saw a thriller called Java Heat, which is set in Indonesia. It stars Mickey Rourke as some sort of terrorist with a strange accent. Might be French. His name is Malik. He is involved in a bombing during which the beautiful princess Sultana is seemingly killed. But then it turns out that she was merely kidnapped and is being held for ransom. Sultana’s father, the Sultan, suspects that the vizier may be behind this. He may be on to something here; in palace intrigues, it’s usually either the vizier or the chief eunuch who’s pulling the strings. Those guys are always up to no good.\n\n"
                                          "I found the film electrifyingly stupid. It was goofy, clumsy, foolish, misbegotten, dumb. It had everything you could possibly want in a bad movie, including some exquisitely scary plastic surgery. But it only had a limited release, meaning that just about nobody ever saw it. I polled all my friends, including a couple who simply adore movies with evil viziers in them, and no one had heard of it.\n\n"
                                          "Again, this is just not fair. Java Heat – like the film where John Cusack plays a thoughtful New Orleans gangster (The Prince); or the one where Christian Slater plays a pistol-packing gunslinger (Dawn Rider); or the one where Kristin Scott Thomas plays a vindictive mob moll who goes to Thailand to avenge her son’s death (Only God Forgives) – did not get the disrespect it deserved. To paraphrase Oscar Wilde: if the movie-going public can’t treat its terrible movies any more disrespectfully than this, it doesn’t deserve to have any.\n\n"
                                      ,style: TextStyle(fontFamily: "Inter",fontSize: 25,letterSpacing: 1.2),),
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
                                          Navigator.pushReplacementNamed(context, "/poste");
                                        }, child: const Text("Next>>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                        const Text("---",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),),
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/postc");
                                        }, child: const Text("<<<Previous",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
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



class PostD extends StatefulWidget {
  const PostD({Key? key}) : super(key: key);

  @override
  State<PostD> createState() => _PostDState();
}

class _PostDState extends State<PostD> with TickerProviderStateMixin {

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
      body:screenWidth < 1025 ? const MobileViewPostD() : LayoutBuilder(
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
                      Flexible(child:Image.asset("assets/7.jpg",width: screenWidth < 769 ? 500 : 1000,),),
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
                                    child: Text("Bad Movie",style: TextStyle(
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
                                        "Why bad films aren't getting the disrespect they deserve\n\n"
                                    "Moviegoers are always talking about films or directors that do not get the respect they deserve. Brilliant films are slighted at the Oscars, while tripe and offal is honoured, they say. Audiences go wild over inane cartoons, while brilliant animated films from Japan or Iran remain little more than obscure cult favourites, known only to a select few. Everyone sees the mass-produced Hollywood trash; nobody sees the hidden, low-budget, indie, foreign gems. It’s just not fair. And it’s not fair for one simple reason: because the films did not get the respect they deserved.\n\n"
                                    "There are, on the other hand, films that do get the respect they deserve. They get exactly the respect they deserve. That is: they get no respect whatsoever. When Adam Sandler’s new film Pixels opened a few weeks ago, both the critics and the public jumped all over it. It was stupid. It was trash. It was Sandler’s fourth bomb in a row. It was pathetic. “Ho-ho-ho!” said the critics. “Ho-ho-ho!” the public agreed. Perhaps, at long last, Sandler would go away and take his stupid, post-prepubescent films with him. But there is a key point to bear in mind here: Pixels may have been a flop, but it was a high-profile flop. It was not a flop that quietly came and went without anyone noticing. It got the disrespect it deserved.\n\n"
                                    "The point is that big-budget bad films such as Pixels get released theatrically, they get reviewed, they get at least a one-week run in cinemas – longer if they are really big-budget films – they are mocked and ridiculed, and then, and only then, do they disappear. If they are really, really bad films such as Gigli or Mars Needs Moms or most recently The Lone Ranger, they enter the Pantheon of the Preternaturally Putrescent, the Temple of the Timelessly Trashy – movies so bad that people will still be talking about them decades after their release. These films may be gone but they are not forgotten.\n\n"
                                    "But what about films that do not get the disrespect they deserve? Once upon a time, just about every movie was released commercially, and spent a full week in cinemas. If it was awful, it was savaged by critics, mocked by talkshow hosts, and ridiculed by the public, who – while not bothering to see it – talked among themselves about how wretched it was anyway. Awful movies became a key feature of the public lingua franca, with everyone trading wisecracks about films they would never actually see. The Postman. Showgirls. Xanadu. Going way back, even Cleopatra. These movies were terrible. These movies were stupid. These movies had no reason to exist. Be that as it may, people knew of their existence. They didn’t simply come and go without anyone noticing. They were like Attila the Hun’s plundering butchers or Genghis Khan’s murderous Golden Hordes. They were mean, they were horrible, they were no fun. But they certainly got everyone’s attention.\n\n"
                                    "Now, however, these films are rarely released theatrically and, if they are, only play in a handful of cinemas as a face-saving gesture on the part of the studio. Such movies are quietly cast out into the Netflix darkness, and never stir up any real public conversation. Only hardcore aficionados of bad films ever get to see them.\n\n"
                                    "Movies are something that we all share. Motion pictures are a subject, unlike politics or religion or gluten-free pastries, that we can all discuss passionately without getting angry and violent about it. We can joke about movies in a way we cannot joke about other subjects because we have nothing personally invested in the films themselves.\n\n"
                                    "Moreover, many of us love bad films. But a bad film that no one sees is like a tree that falls in a forest that no one knows about. I have just read that 47 Ronin is estimated to be the single biggest box-office failure of all time. Bigger than John Carter. Bigger than The Lone Ranger. But unlike those other films, nobody but nobody saw 47 Ronin. Just me and my friend Nathaniel and four Japanese film buffs in Limoges. Not even my son went to see it, and he’ll watch anything.\n\n"
                                    "This is a tragedy. A bad film that no one ever sees is like a beautiful sunset wasted on the blind, a gorgeous symphony wasted on the deaf, a fabulous meal wasted on someone who just joined Weight Watchers. A bad film is rare, precious and beautiful. But mostly bad. Recently I saw a thriller called Java Heat, which is set in Indonesia. It stars Mickey Rourke as some sort of terrorist with a strange accent. Might be French. His name is Malik. He is involved in a bombing during which the beautiful princess Sultana is seemingly killed. But then it turns out that she was merely kidnapped and is being held for ransom. Sultana’s father, the Sultan, suspects that the vizier may be behind this. He may be on to something here; in palace intrigues, it’s usually either the vizier or the chief eunuch who’s pulling the strings. Those guys are always up to no good.\n\n"
                                    "I found the film electrifyingly stupid. It was goofy, clumsy, foolish, misbegotten, dumb. It had everything you could possibly want in a bad movie, including some exquisitely scary plastic surgery. But it only had a limited release, meaning that just about nobody ever saw it. I polled all my friends, including a couple who simply adore movies with evil viziers in them, and no one had heard of it.\n\n"
                                    "Again, this is just not fair. Java Heat – like the film where John Cusack plays a thoughtful New Orleans gangster (The Prince); or the one where Christian Slater plays a pistol-packing gunslinger (Dawn Rider); or the one where Kristin Scott Thomas plays a vindictive mob moll who goes to Thailand to avenge her son’s death (Only God Forgives) – did not get the disrespect it deserved. To paraphrase Oscar Wilde: if the movie-going public can’t treat its terrible movies any more disrespectfully than this, it doesn’t deserve to have any.\n\n"
                                      ,style: TextStyle(fontFamily: "DynaPuff",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/poste");
                                    }, child: const Text("Next>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/postc");
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

