import 'package:cemal_blog/tools/contents.dart';
import 'package:flutter/material.dart';
import 'package:cemal_blog/tools/Custom_Tab.dart';
import 'package:cemal_blog/tools/searchBar.dart';
import 'package:cemal_blog/tools/Navigation.dart';



class MobileViewPostE extends StatefulWidget {
  const MobileViewPostE({Key? key}) : super(key: key);

  @override
  _MobileViewPostEState createState() {
    return _MobileViewPostEState();
  }
}

class _MobileViewPostEState extends State<MobileViewPostE> with TickerProviderStateMixin {
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

                        child: Image.asset("assets/6.jpg"),),),
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
                                    child: Text("Video Game Industry",style: TextStyle(
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
                                        "How the Video Game Industry Is Changing\n\n"
                                    "Video games have been around for decades, providing entertainment for children and adults alike. They have evolved significantly from the early days of computer games and the first versions of Nintendo and Atari. The days of pixelated screens and limited sounds are a distant memory as video games have become more lifelike than ever. As technology continues to improve, so do video games.\n\n"
                                    "Video game creation has become increasingly complex, and the cost of creating a game to run on one of the major consoles has risen with this greater complexity. It was once unthinkable to sink millions into development costs, but games today can cost tens and even hundreds of millions. This has pushed game development into Hollywood movie territory in terms of production and marketing costs.\n\n"
                                    "The video game sector is immensely large. In fact, it is larger than the movie and music industries combined, and it is only growing. Though it doesn't get the same attention that the movie and music industry does, there are over two billion gamers across the world. That is 26% of the world's population.\n\n"
                                    "It's no surprise that companies want a piece of the pie. In 2020, the gaming industry generated \$155 billion in revenue, By 2025, analysts predict the industry will generate more than \$260 billion in revenue.\n\n"
                                        "As such, tech companies are looking to get involved in this revenue stream. Tech giants such as Google (GOOGL), Meta (META), formerly Facebook, and Apple (AAPL), have all made plans to enter the video game industry.\n\n"
            "Streaming and the Involvement of Tech Companies\n\n"
                "Nontraditional gaming companies, like Meta, Apple, and Google, are getting into the industry. The tech industry is looking for ways to make video game streaming as natural as streaming a song on Spotify or a movie on Netflix.\n\n"
                "Microsoft (MSFT) has already been in the gaming industry through its popular Xbox console. In 2019, the company introduced Project xCloud, a video game streaming service that allows users to stream Microsoft's Xbox games to PCs or other devices. The service became fully functional in September 2020 and can be accessed by subscribers to Xbox Game Pass Ultimate\n\n"
            "In 2016, Meta began developing a gaming platform with Unity Technologies, which makes a game development framework for people to make video games. Google launched its program, Stadia, which is Google's cloud gaming service, that allows users to play streaming video games with extremely high quality. It is available through Google's browser, phones, tablets, and desktop computers.\n\n"
        "The key goal for all of these companies is to allow players to stream video games without the need for a computer or a video game console. As this trend continues, purchasing physical video games in the form of cartridges or discs is becoming increasingly rare.\n\n"
        "Subscription streaming services are the future and will be beneficial to video game companies, like Ubisoft and Electronic Arts, as manufacturing, shipping, and storage costs will all disappear. Subscription services have also allowed for revenue generation to occur throughout the year, whereas traditionally, games were bought during holidays and other big occasion events.\n\n"
        "Technical Innovations\n\n"
            "Virtual reality is here. Oculus VR, a subsidiary of Meta, is working hard on improving the quality of the virtual reality headsets it has already released. Oculus VR was purchased by Meta in 2014 for \$2 billion.\n\n"
        "The Oculus Quest 2 is Meta's latest offering of the product.\n\n"
        "Video games have already surpassed many other forms of entertainment as far as immersion goes, and virtual reality will add yet another layer. There will also be further experimentation with controls, such as adding voice, touchscreens, and gestures to game mechanics when consoles add peripherals to take in those inputs.\n\n"
        "Apple is also targeting the release of a virtual reality headset in 2021 or 2022.\n\n"
        "Merchandising\n\n"
        "Like Hollywood, the video game industry needs to spin more revenue off of its intellectual property because the product costs a lot to make. Merchandising is already around, with t-shirts, figures, hats, mugs, and more. The Halo series on Microsoft’s Xbox has spread to other forms of content through novels and comic books in addition to an upcoming television series and a long-rumored movie. This may become the approach for all successful video game series to follow.\n\n"
        "In fact, the popular video game, Assassin's Creed, a game developed by Ubisoft, was made into a movie in 2016 with prominent actors. Sega's popular Sonic the Hedgehog game was made into a successful movie in 2020, starring well-known actors, and set the record for the biggest opening weekend for a video game–based movie.\n\n"
        "Market Demographics Are Expanding\n\n"
        "Another trend in the video game industry is the expansion of the market as far as demographics go. People are playing games both earlier and later in life, and the gender mix is nearing par. The top-level gamers competing in eSports leagues have gained enough recognition that they can apply for the professional athlete visa when entering the U.S. Gaming has a wide appeal, and it is still growing.\n\n"
        "Video games have become so popular on a mass scale that certain players stream videos of themselves playing video games at home and make hundreds and thousands of dollars by doing so. This has become another revenue generation sector of the video game market.\n\n"
        "Vintage Video Games\n\n"
        "As the world becomes nostalgic and we see reboots and remakes of loved films and shows from decades ago, the same is happening for video games. Vintage video games from the early days of the industry are in high demand and have become extremely popular, not only with older players who experienced the games first-hand but also with a new generation of players.\n\n"
        "Many companies have taken advantage of this nostalgia and released updated versions of their consoles. Nintendo (NTDOF), more than any other company, has successfully taken advantage of this interest in retro video games by releasing Nintendo Classic Mini and Nintendo Switch, two consoles that allow for playing classic Nintendo video games. This has become a solid revenue stream for companies that were around at the early stages of the industry.\n\n"
      "The Bottom Line\n\n"
      "The video game industry has always been about innovation. New technology, new controls, and new experiences are to be expected. As the world moves more and more to time spent on mobile phones, streaming services, and mobile phone game playing will become an important arena for revenues, and large tech companies will look to leverage their current framework to get involved.\n\n"
      "Perhaps the most interesting change in the video game industry is the expanding demographics of gamers. With more people playing games, creating demand for more immersive entertainment, and looking for easier ways to access games, the future of the video game industry looks bright.\n\n"
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
                                          Navigator.pushReplacementNamed(context, "/postf");
                                        }, child: const Text("Next>>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                        const Text("---",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),),
                                        TextButton(onPressed: (){
                                          Navigator.pushReplacementNamed(context, "/postd");
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



class PostE extends StatefulWidget {
  const PostE({Key? key}) : super(key: key);

  @override
  State<PostE> createState() => _PostEState();
}

class _PostEState extends State<PostE> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late ScrollController scrollController = ScrollController();

  late double screenWidth;
  late double screenHeight;

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
      body:screenWidth < 1025 ? const MobileViewPostE() : LayoutBuilder(
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
                      Flexible(child:Image.asset("assets/6.jpg",width: screenWidth < 769 ? 500 : 1000,),),
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
                                    child: Text("Video Game Industry",style: TextStyle(
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
                                      "How the Video Game Industry Is Changing\n\n"
                                          "Video games have been around for decades, providing entertainment for children and adults alike. They have evolved significantly from the early days of computer games and the first versions of Nintendo and Atari. The days of pixelated screens and limited sounds are a distant memory as video games have become more lifelike than ever. As technology continues to improve, so do video games.\n\n"
                                          "Video game creation has become increasingly complex, and the cost of creating a game to run on one of the major consoles has risen with this greater complexity. It was once unthinkable to sink millions into development costs, but games today can cost tens and even hundreds of millions. This has pushed game development into Hollywood movie territory in terms of production and marketing costs.\n\n"
                                          "The video game sector is immensely large. In fact, it is larger than the movie and music industries combined, and it is only growing. Though it doesn't get the same attention that the movie and music industry does, there are over two billion gamers across the world. That is 26% of the world's population.\n\n"
                                          "It's no surprise that companies want a piece of the pie. In 2020, the gaming industry generated \$155 billion in revenue, By 2025, analysts predict the industry will generate more than \$260 billion in revenue.\n\n"
                                          "As such, tech companies are looking to get involved in this revenue stream. Tech giants such as Google (GOOGL), Meta (META), formerly Facebook, and Apple (AAPL), have all made plans to enter the video game industry.\n\n"
                                          "Streaming and the Involvement of Tech Companies\n\n"
                                          "Nontraditional gaming companies, like Meta, Apple, and Google, are getting into the industry. The tech industry is looking for ways to make video game streaming as natural as streaming a song on Spotify or a movie on Netflix.\n\n"
                                          "Microsoft (MSFT) has already been in the gaming industry through its popular Xbox console. In 2019, the company introduced Project xCloud, a video game streaming service that allows users to stream Microsoft's Xbox games to PCs or other devices. The service became fully functional in September 2020 and can be accessed by subscribers to Xbox Game Pass Ultimate\n\n"
                                          "In 2016, Meta began developing a gaming platform with Unity Technologies, which makes a game development framework for people to make video games. Google launched its program, Stadia, which is Google's cloud gaming service, that allows users to play streaming video games with extremely high quality. It is available through Google's browser, phones, tablets, and desktop computers.\n\n"
                                          "The key goal for all of these companies is to allow players to stream video games without the need for a computer or a video game console. As this trend continues, purchasing physical video games in the form of cartridges or discs is becoming increasingly rare.\n\n"
                                          "Subscription streaming services are the future and will be beneficial to video game companies, like Ubisoft and Electronic Arts, as manufacturing, shipping, and storage costs will all disappear. Subscription services have also allowed for revenue generation to occur throughout the year, whereas traditionally, games were bought during holidays and other big occasion events.\n\n"
                                          "Technical Innovations\n\n"
                                          "Virtual reality is here. Oculus VR, a subsidiary of Meta, is working hard on improving the quality of the virtual reality headsets it has already released. Oculus VR was purchased by Meta in 2014 for \$2 billion.\n\n"
                                          "The Oculus Quest 2 is Meta's latest offering of the product.\n\n"
                                          "Video games have already surpassed many other forms of entertainment as far as immersion goes, and virtual reality will add yet another layer. There will also be further experimentation with controls, such as adding voice, touchscreens, and gestures to game mechanics when consoles add peripherals to take in those inputs.\n\n"
                                          "Apple is also targeting the release of a virtual reality headset in 2021 or 2022.\n\n"
                                          "Merchandising\n\n"
                                          "Like Hollywood, the video game industry needs to spin more revenue off of its intellectual property because the product costs a lot to make. Merchandising is already around, with t-shirts, figures, hats, mugs, and more. The Halo series on Microsoft’s Xbox has spread to other forms of content through novels and comic books in addition to an upcoming television series and a long-rumored movie. This may become the approach for all successful video game series to follow.\n\n"
                                          "In fact, the popular video game, Assassin's Creed, a game developed by Ubisoft, was made into a movie in 2016 with prominent actors. Sega's popular Sonic the Hedgehog game was made into a successful movie in 2020, starring well-known actors, and set the record for the biggest opening weekend for a video game–based movie.\n\n"
                                          "Market Demographics Are Expanding\n\n"
                                          "Another trend in the video game industry is the expansion of the market as far as demographics go. People are playing games both earlier and later in life, and the gender mix is nearing par. The top-level gamers competing in eSports leagues have gained enough recognition that they can apply for the professional athlete visa when entering the U.S. Gaming has a wide appeal, and it is still growing.\n\n"
                                          "Video games have become so popular on a mass scale that certain players stream videos of themselves playing video games at home and make hundreds and thousands of dollars by doing so. This has become another revenue generation sector of the video game market.\n\n"
                                          "Vintage Video Games\n\n"
                                          "As the world becomes nostalgic and we see reboots and remakes of loved films and shows from decades ago, the same is happening for video games. Vintage video games from the early days of the industry are in high demand and have become extremely popular, not only with older players who experienced the games first-hand but also with a new generation of players.\n\n"
                                          "Many companies have taken advantage of this nostalgia and released updated versions of their consoles. Nintendo (NTDOF), more than any other company, has successfully taken advantage of this interest in retro video games by releasing Nintendo Classic Mini and Nintendo Switch, two consoles that allow for playing classic Nintendo video games. This has become a solid revenue stream for companies that were around at the early stages of the industry.\n\n"
                                          "The Bottom Line\n\n"
                                          "The video game industry has always been about innovation. New technology, new controls, and new experiences are to be expected. As the world moves more and more to time spent on mobile phones, streaming services, and mobile phone game playing will become an important arena for revenues, and large tech companies will look to leverage their current framework to get involved.\n\n"
                                          "Perhaps the most interesting change in the video game industry is the expanding demographics of gamers. With more people playing games, creating demand for more immersive entertainment, and looking for easier ways to access games, the future of the video game industry looks bright.\n\n"
                                      ,style: TextStyle(fontFamily: "DynaPuff",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/postf");
                                    }, child: const Text("Next>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/postd");
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

