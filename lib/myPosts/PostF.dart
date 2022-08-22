import 'package:cemal_blog/tools/contents.dart';
import 'package:flutter/material.dart';
import 'package:cemal_blog/tools/Custom_Tab.dart';
import 'package:cemal_blog/tools/searchBar.dart';
import 'package:cemal_blog/tools/Navigation.dart';



class MobileViewPostF extends StatefulWidget {
  const MobileViewPostF({Key? key}) : super(key: key);

  @override
  _MobileViewPostFState createState() {
    return _MobileViewPostFState();
  }
}

class _MobileViewPostFState extends State<MobileViewPostF> with TickerProviderStateMixin {
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

                        child: Image.asset("assets/8.jpg"),),),
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
                                    child: Text("How Corporations Destroy Video Games",style: TextStyle(
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
                                      "How corporations are destroying video games\n\n"
                                          "Since going mainstream in the 1980s, video games have evolved from a nerdy lark to a big industry. When I say big, I mean really big: Forbes reports that in 2016, the gaming industry in the U.S. had sales totaling \$30.4 billion. (Contrast that with the film industry, which had only \$11.4 billion in box office receipts in the same year.) And while some games are still produced by small indie studios, the gaming world is much like Hollywood, with a few big players spending tens of millions to produce games that will reap that much or more.\n\n"
                                          "But with big corporations controlling huge swaths of the gaming industry, the precepts of video gaming have inevitably changed – and the field’s artistry has been subsumed by the need for profit. Contemporary game designers are motivated to spend more of their time adding features that play into players’ psychology, manipulating them into opening their wallets.\n\n"
                                          "To follow the capitalistic arc of the video game industry, a brief history lesson is in order. Because of course, the gaming industry, even when it was much smaller, was always a for-profit industry. It’s just that how it's made money has changed.\n\n"
                                          "The 1980s were the golden age for arcade games. Both kids and adults wanted to experience the euphoric novelty of the arcade: whirring sounds, flashing lights, screaming for joy when reaching a new high score, the clanking of the air hockey table and the sound of change hitting metal.\n\n"
                                          "I recently spent some time in an arcade pumping some quarters into some classic games. I realized that games back then were much harder than they are now. Some might complain that video games are too easy now, but looking at the current video game landscape, it makes sense that there was a general shift in difficulty. Arcade games were meant to get as many quarters from you as possible.\n\n"
                                          "Consider the game “Dragon’s Lair,” recently repopularized by its appearance in the second season of Netflix’s 1980s nostalgic thriller “Stranger Things.” The hand-animated cinematic arcade game was composed of a series of button presses that correlated to a character's action. The player travels through a castle to save a princess, facing traps and monsters as obstacles on the way. The player must react to these traps as they move; failure means losing a life. “Dragon’s Lair” was notoriously difficult, meaning it cost a lot of quarters to keep playing after losing again and again.\n\n"
                                          "In their original incarnation, video games were something you played while you were out – meaning that you didn’t buy a disk at the store and bring it home; rather, you paid for games quarter-by-quarter at the arcade. As a result, the foundation of video games was predatory, the goal being to get more money out of the player – à la “Dragon’s Lair.” This was somewhat understandable. If I could walk into an arcade and beat a game on my first try, then that wouldn’t be a viable business model. There had to be a balance of player expectation with business viability.\n\n"
                                          "But then, the arcade age died and the video game industry made a major shift to home consoles and PCs. And video games began to embrace their unfortunate foundation in predation.\n\n"
                                          "Remember “Candy Crush Saga”? The explosively popular mobile game came out in 2012. It was a matching puzzle game themed around pieces of candy. Every level would present the player with a goal, whether it was matching specific pieces or achieving a certain number of points. The notoriously addictive game progressed through a level system. It had a social element, and could show players what level their friends had reached, which allowed players to ogle or brag about each other’s progress. This type of progression felt satisfying to players, and the levels would get more difficult and complex as you progressed.\n\n"
                                          "This is basic gameplay design: increase the difficulty to make a more rewarding experience for the player.  But with games like “Candy Crush,” players tended to get stuck at the same levels. This is intentional: Players can try and try again to the point of frustration, or pay money to make it easier. In “Candy Crush,” as in many other smartphone games, these digital power-ups might give you the ability to make an extra move or another in-game advantage. At last, after spending a dollar on said power-up, you beat the level and feel a sense of accomplishment.\n\n"
                                          "This isn’t accidental; “Candy Crush Saga” knows exactly what it’s doing . These kinds of limitations overcome by power-ups are called “progress gates,” and it’s a basic free to play (or F2P) tactic used to coerce players to purchase in-game items with real money. These kinds of purchases are widely known as “microtransactions.” Basically, certain levels will become extremely hard to complete without the help of them.\n\n"
                                          "“Anyone who has played the game ‘Candy Crush Saga’ for more than a few minutes has probably, at least on a subconscious level, grappled with the bankrupt soul of modern video-game capitalism,” wrote Andrew Leonard in Salon in 2014. “In the so-called free-to-play world, it's hard to think of another game developer that has more successfully mastered the marketing coup that merges addictive game play with powerful incentives to regularly fork over cold, hard cash.”\n\n"
                                          "Many games won’t let you buy these power-ups until you’ve converted them to their own in-game currency. In “Pokémon Go,” it’s “coins”; in other games it is often “gems” or “gold.” This is another coercive way to monetize microtransactions: By using a separate currency, it distracts players from how much they’re buying. Likewise, the true price is generally obscured by bulk discounts: A game may sell 100 gems for \$99.99 or five gems for \$10.99.\n\n"
                                          "While the gaming community has accepted these schemes as inevitable, the general public is often less savvy when it comes to understanding how they are preyed upon by video games. And “Candy Crush” is just the tip of the iceberg; its tactics are benign compared to more recent industrial psychological tactics used by other game-makers.\n\n"
                                          "Back in 2004, Pandemic Studios was contracted to design a video game, called “Star Wars Battlefront,” set in the universe of George Lucas’ “Star Wars” saga. The game set players in the shoes of a stormtrooper or a rebel soldier involved in an ongoing battle. At the time, the game was well received critically and commercially.\n\n"
                                          "The sequel, “Star Wars Battlefront 2,” was a major improvement on the first, and the series became a staple in video game history. Unfortunately, Pandemic shut down and the \"Battlefront\" franchise was left rudderless, until Electronic Arts (EA) bought the license.\n\n"
                                          "EA DICE (a subsidiary studio of EA) rebooted the whole franchise with “Star Wars Battlefront” in 2015. The game was generally well-received, but critical consensus didn’t match the original; Pandemic’s “Star Wars Battlefront” was popular because it managed to be one of few “Star Wars” games that captured the cinematic nature of the films. But just as Hollywood tends to reboot, remake and revive, EA was here to bilk consumers. Hence, while technically impressive, EA’s “Battlefront” had bland, lackluster gameplay, and was criticized for omitting any single-player mode.\n\n"
                                          "Interestingly, the 2015 “Star Wars Battlefront” did feature one sinister innovation over the original, though. It offered users the chance to purchase what is called, in modern video gaming lingo, a “season pass.”\n\n"
                                          "To understand the meaning of “season pass” outside of its sports context, first, know that the internet changed how all media, including game media, was consumed. Indeed, video game publishers saw the rise of the internet as a business opportunity that would allow them to cut corners.\n\n"
                                          "Before the internet, console games were shipped on disks or cartridges, and heavily tested for bugs before being mastered. If there was a bug in the game, there was nothing developers could do; the disk or cartridge couldn’t be readily updated. But with the internet, consoles and developers started to take advantage of selling games as a service, rather than a singular product. Likewise, they could sell a bug-ridden game and issue a patch later.\n\n"
                                          "The next iteration of this capitalistic mode of thinking was the realization that games could be released unfinished, or as bare-bones versions that could be fleshed out with downloadable add-ons that the publisher would charge for. These were deemed “downloadable content” (or DLC) packs, and are often regularly scheduled, planned releases, like clockwork. Letting users buy all scheduled DLC packs upfront is termed buying a season pass.\n\n"
                                          "Electronic Arts became notorious for its predatory business model with downloadable content. The company is particularly fond of selling games with what is called “day-one DLC” — add-ons that are purchasable on the same day as the game’s release. The moral issue with day-one DLC is that by its very nature, such a product could been included with the game without being charged for, but was purposely created separately so as to upsell customers. Indeed, there is a reason that EA was voted “Worst Company in America” by Consumerist two years in a row.\n\n"
                                          "Though these insider business practices might seem confusing to non-gamers, gamers like myself notice and take stock of the small-scale politics of video gaming. There is no gaming industry equivalent of Ralph Nader, a consumer advocate who follows and exposes attempts to rip off video gamers, though those of us who pay attention to such things do our best to fight back against what we see as an oft-manipulative industry. So it was with some surprise that EA ended up in national news recently for its increasingly predatory attempts to rip off consumers — attempts that some government regulators believe broke the law.\n\n"
                                          "“Star Wars Battlefront 2,” the follow-up to EA’s mixed success with “Star Wars Battlefront,” was set to release in November 2017. Before that release, EA launched a beta phase where they let players play the unfinished game in October 2017. During this beta, players realized that “star cards” were a main pillar of the game. Specifically, star cards were in-game power-ups that enhanced your characters’ abilities, and which were crucial to winning the game. One of the easiest ways to obtain star cards was to buy “loot boxes,” or mystery boxes of random in-game items that could be purchased with real money or in-game currency (which can be exchanged with real money). In the case of “Battlefront 2,” these loot boxes had “randomized” odds for receiving certain items; as such, every loot box is a grab bag, and could be worthless or valuable. It’s kind of like a lottery ticket in that sense.\n\n"
                                          "Soon after release, “Battlefront 2” became a media fixation, and not just from video game magazines. CNN and HuffPost picked up the story of the loot boxes, likening them to manipulative forms of gambling. Eventually, the Belgium Gaming Commission opened up an investigation into the game, claiming that EA’s “loot boxes” constituted gambling and therefore broke the law.\n\n"
                                          "And with that, all eyes were on the video game industry.\n\n"
                                          "U.S. politicians took note, too. State Reps. Chris Lee and Sean Quinlan of Hawaii announced “action to address predatory practices at Electronic Arts and other companies.” Quinlan referenced “Joe Camel,” the Camel cigarettes mascot widely considered to be a subtle gimmick to get kids interested in smoking, hinting that EA’s gameplay tactics might be turning children on to gambling. Finally, Washington state Sen. Kevin Ranker, D-Orcas Island, introduced a bill that aimed to find out if video games’ loot boxes were “a form of gambling that targets children,” as one headline glared.\n\n"
                                          "Why did this particular game at this moment get so much negative attention, and become so peculiarly politicized? After all, games in general, and EA in particular, have been making games with microtransactions and loot boxes for years and years. In this instance, the public attention may also be because of the draw of “Star Wars,” one of the most valuable entertainment franchises in the world. But the whole loot box debacle also seems to epitomize the path of the gaming industry since its inception: increasingly manipulating players into opening their wallets, and a trend that finally reached a boiling point that crossed ethical and legal boundaries.\n\n"
                                          "This should be an awakening moment for the increasingly exploitative gaming industry, but time will tell if that bears out. In any case, gamers desperately need a consumer advocate, a Ralph Nader of the gaming world, to fight back against corporate greed run amok.\n\n"
                                          "Because video games are such an interactive medium, they can do things that other arts can’t, namely, foster empathy by putting players directly in someone else’s shoes. And generally, this is a good thing. But if developers and publishers take advantage of their players, it may be the end of the industry. EA is merely one heinous example of a greedy corporation out to nickel and dime their players at every corner, yet their practices are shared by other big-name video game companies. If the industry doesn’t find a balance between monetization and player enjoyment, they stand to irreparably destroy the art.\n\n"
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
                                          Navigator.pushReplacementNamed(context, "/postg");
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



class PostF extends StatefulWidget {
  const PostF({Key? key}) : super(key: key);

  @override
  State<PostF> createState() => _PostFState();
}

class _PostFState extends State<PostF> with TickerProviderStateMixin {

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
      body:screenWidth < 1025 ? const MobileViewPostF() : LayoutBuilder(
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
                      Flexible(child:Image.asset("assets/8.jpg",width: screenWidth < 769 ? 500 : 1000,),),
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
                                    child: Text("How Corporations Destroy Videos Games",style: TextStyle(
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
                                      "How corporations are destroying video games\n\n"
                                          "Since going mainstream in the 1980s, video games have evolved from a nerdy lark to a big industry. When I say big, I mean really big: Forbes reports that in 2016, the gaming industry in the U.S. had sales totaling \$30.4 billion. (Contrast that with the film industry, which had only \$11.4 billion in box office receipts in the same year.) And while some games are still produced by small indie studios, the gaming world is much like Hollywood, with a few big players spending tens of millions to produce games that will reap that much or more.\n\n"
                                          "But with big corporations controlling huge swaths of the gaming industry, the precepts of video gaming have inevitably changed – and the field’s artistry has been subsumed by the need for profit. Contemporary game designers are motivated to spend more of their time adding features that play into players’ psychology, manipulating them into opening their wallets.\n\n"
                                          "To follow the capitalistic arc of the video game industry, a brief history lesson is in order. Because of course, the gaming industry, even when it was much smaller, was always a for-profit industry. It’s just that how it's made money has changed.\n\n"
                                          "The 1980s were the golden age for arcade games. Both kids and adults wanted to experience the euphoric novelty of the arcade: whirring sounds, flashing lights, screaming for joy when reaching a new high score, the clanking of the air hockey table and the sound of change hitting metal.\n\n"
                                          "I recently spent some time in an arcade pumping some quarters into some classic games. I realized that games back then were much harder than they are now. Some might complain that video games are too easy now, but looking at the current video game landscape, it makes sense that there was a general shift in difficulty. Arcade games were meant to get as many quarters from you as possible.\n\n"
                                          "Consider the game “Dragon’s Lair,” recently repopularized by its appearance in the second season of Netflix’s 1980s nostalgic thriller “Stranger Things.” The hand-animated cinematic arcade game was composed of a series of button presses that correlated to a character's action. The player travels through a castle to save a princess, facing traps and monsters as obstacles on the way. The player must react to these traps as they move; failure means losing a life. “Dragon’s Lair” was notoriously difficult, meaning it cost a lot of quarters to keep playing after losing again and again.\n\n"
                                          "In their original incarnation, video games were something you played while you were out – meaning that you didn’t buy a disk at the store and bring it home; rather, you paid for games quarter-by-quarter at the arcade. As a result, the foundation of video games was predatory, the goal being to get more money out of the player – à la “Dragon’s Lair.” This was somewhat understandable. If I could walk into an arcade and beat a game on my first try, then that wouldn’t be a viable business model. There had to be a balance of player expectation with business viability.\n\n"
                                          "But then, the arcade age died and the video game industry made a major shift to home consoles and PCs. And video games began to embrace their unfortunate foundation in predation.\n\n"
                                          "Remember “Candy Crush Saga”? The explosively popular mobile game came out in 2012. It was a matching puzzle game themed around pieces of candy. Every level would present the player with a goal, whether it was matching specific pieces or achieving a certain number of points. The notoriously addictive game progressed through a level system. It had a social element, and could show players what level their friends had reached, which allowed players to ogle or brag about each other’s progress. This type of progression felt satisfying to players, and the levels would get more difficult and complex as you progressed.\n\n"
                                          "This is basic gameplay design: increase the difficulty to make a more rewarding experience for the player.  But with games like “Candy Crush,” players tended to get stuck at the same levels. This is intentional: Players can try and try again to the point of frustration, or pay money to make it easier. In “Candy Crush,” as in many other smartphone games, these digital power-ups might give you the ability to make an extra move or another in-game advantage. At last, after spending a dollar on said power-up, you beat the level and feel a sense of accomplishment.\n\n"
                                          "This isn’t accidental; “Candy Crush Saga” knows exactly what it’s doing . These kinds of limitations overcome by power-ups are called “progress gates,” and it’s a basic free to play (or F2P) tactic used to coerce players to purchase in-game items with real money. These kinds of purchases are widely known as “microtransactions.” Basically, certain levels will become extremely hard to complete without the help of them.\n\n"
                                          "“Anyone who has played the game ‘Candy Crush Saga’ for more than a few minutes has probably, at least on a subconscious level, grappled with the bankrupt soul of modern video-game capitalism,” wrote Andrew Leonard in Salon in 2014. “In the so-called free-to-play world, it's hard to think of another game developer that has more successfully mastered the marketing coup that merges addictive game play with powerful incentives to regularly fork over cold, hard cash.”\n\n"
                                          "Many games won’t let you buy these power-ups until you’ve converted them to their own in-game currency. In “Pokémon Go,” it’s “coins”; in other games it is often “gems” or “gold.” This is another coercive way to monetize microtransactions: By using a separate currency, it distracts players from how much they’re buying. Likewise, the true price is generally obscured by bulk discounts: A game may sell 100 gems for \$99.99 or five gems for \$10.99.\n\n"
                                          "While the gaming community has accepted these schemes as inevitable, the general public is often less savvy when it comes to understanding how they are preyed upon by video games. And “Candy Crush” is just the tip of the iceberg; its tactics are benign compared to more recent industrial psychological tactics used by other game-makers.\n\n"
                                          "Back in 2004, Pandemic Studios was contracted to design a video game, called “Star Wars Battlefront,” set in the universe of George Lucas’ “Star Wars” saga. The game set players in the shoes of a stormtrooper or a rebel soldier involved in an ongoing battle. At the time, the game was well received critically and commercially.\n\n"
                                          "The sequel, “Star Wars Battlefront 2,” was a major improvement on the first, and the series became a staple in video game history. Unfortunately, Pandemic shut down and the \"Battlefront\" franchise was left rudderless, until Electronic Arts (EA) bought the license.\n\n"
                                          "EA DICE (a subsidiary studio of EA) rebooted the whole franchise with “Star Wars Battlefront” in 2015. The game was generally well-received, but critical consensus didn’t match the original; Pandemic’s “Star Wars Battlefront” was popular because it managed to be one of few “Star Wars” games that captured the cinematic nature of the films. But just as Hollywood tends to reboot, remake and revive, EA was here to bilk consumers. Hence, while technically impressive, EA’s “Battlefront” had bland, lackluster gameplay, and was criticized for omitting any single-player mode.\n\n"
                                          "Interestingly, the 2015 “Star Wars Battlefront” did feature one sinister innovation over the original, though. It offered users the chance to purchase what is called, in modern video gaming lingo, a “season pass.”\n\n"
                                          "To understand the meaning of “season pass” outside of its sports context, first, know that the internet changed how all media, including game media, was consumed. Indeed, video game publishers saw the rise of the internet as a business opportunity that would allow them to cut corners.\n\n"
                                          "Before the internet, console games were shipped on disks or cartridges, and heavily tested for bugs before being mastered. If there was a bug in the game, there was nothing developers could do; the disk or cartridge couldn’t be readily updated. But with the internet, consoles and developers started to take advantage of selling games as a service, rather than a singular product. Likewise, they could sell a bug-ridden game and issue a patch later.\n\n"
                                          "The next iteration of this capitalistic mode of thinking was the realization that games could be released unfinished, or as bare-bones versions that could be fleshed out with downloadable add-ons that the publisher would charge for. These were deemed “downloadable content” (or DLC) packs, and are often regularly scheduled, planned releases, like clockwork. Letting users buy all scheduled DLC packs upfront is termed buying a season pass.\n\n"
                                          "Electronic Arts became notorious for its predatory business model with downloadable content. The company is particularly fond of selling games with what is called “day-one DLC” — add-ons that are purchasable on the same day as the game’s release. The moral issue with day-one DLC is that by its very nature, such a product could been included with the game without being charged for, but was purposely created separately so as to upsell customers. Indeed, there is a reason that EA was voted “Worst Company in America” by Consumerist two years in a row.\n\n"
                                          "Though these insider business practices might seem confusing to non-gamers, gamers like myself notice and take stock of the small-scale politics of video gaming. There is no gaming industry equivalent of Ralph Nader, a consumer advocate who follows and exposes attempts to rip off video gamers, though those of us who pay attention to such things do our best to fight back against what we see as an oft-manipulative industry. So it was with some surprise that EA ended up in national news recently for its increasingly predatory attempts to rip off consumers — attempts that some government regulators believe broke the law.\n\n"
                                          "“Star Wars Battlefront 2,” the follow-up to EA’s mixed success with “Star Wars Battlefront,” was set to release in November 2017. Before that release, EA launched a beta phase where they let players play the unfinished game in October 2017. During this beta, players realized that “star cards” were a main pillar of the game. Specifically, star cards were in-game power-ups that enhanced your characters’ abilities, and which were crucial to winning the game. One of the easiest ways to obtain star cards was to buy “loot boxes,” or mystery boxes of random in-game items that could be purchased with real money or in-game currency (which can be exchanged with real money). In the case of “Battlefront 2,” these loot boxes had “randomized” odds for receiving certain items; as such, every loot box is a grab bag, and could be worthless or valuable. It’s kind of like a lottery ticket in that sense.\n\n"
                                          "Soon after release, “Battlefront 2” became a media fixation, and not just from video game magazines. CNN and HuffPost picked up the story of the loot boxes, likening them to manipulative forms of gambling. Eventually, the Belgium Gaming Commission opened up an investigation into the game, claiming that EA’s “loot boxes” constituted gambling and therefore broke the law.\n\n"
                                          "And with that, all eyes were on the video game industry.\n\n"
                                          "U.S. politicians took note, too. State Reps. Chris Lee and Sean Quinlan of Hawaii announced “action to address predatory practices at Electronic Arts and other companies.” Quinlan referenced “Joe Camel,” the Camel cigarettes mascot widely considered to be a subtle gimmick to get kids interested in smoking, hinting that EA’s gameplay tactics might be turning children on to gambling. Finally, Washington state Sen. Kevin Ranker, D-Orcas Island, introduced a bill that aimed to find out if video games’ loot boxes were “a form of gambling that targets children,” as one headline glared.\n\n"
                                          "Why did this particular game at this moment get so much negative attention, and become so peculiarly politicized? After all, games in general, and EA in particular, have been making games with microtransactions and loot boxes for years and years. In this instance, the public attention may also be because of the draw of “Star Wars,” one of the most valuable entertainment franchises in the world. But the whole loot box debacle also seems to epitomize the path of the gaming industry since its inception: increasingly manipulating players into opening their wallets, and a trend that finally reached a boiling point that crossed ethical and legal boundaries.\n\n"
                                          "This should be an awakening moment for the increasingly exploitative gaming industry, but time will tell if that bears out. In any case, gamers desperately need a consumer advocate, a Ralph Nader of the gaming world, to fight back against corporate greed run amok.\n\n"
                                          "Because video games are such an interactive medium, they can do things that other arts can’t, namely, foster empathy by putting players directly in someone else’s shoes. And generally, this is a good thing. But if developers and publishers take advantage of their players, it may be the end of the industry. EA is merely one heinous example of a greedy corporation out to nickel and dime their players at every corner, yet their practices are shared by other big-name video game companies. If the industry doesn’t find a balance between monetization and player enjoyment, they stand to irreparably destroy the art.\n\n"
                                      ,style: TextStyle(fontFamily: "DynaPuff",fontSize: 25,letterSpacing: 1.2),),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/postg");
                                    }, child: const Text("Next>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/poste");
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

