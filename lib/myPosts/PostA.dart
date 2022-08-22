import 'package:cemal_blog/tools/contents.dart';
import 'package:flutter/material.dart';
import 'package:cemal_blog/tools/Custom_Tab.dart';
import 'package:cemal_blog/tools/searchBar.dart';
import 'package:cemal_blog/tools/Navigation.dart';



class MobileViewPostA extends StatefulWidget {
  const MobileViewPostA({Key? key}) : super(key: key);

  @override
  _MobileViewPostAState createState() {
    return _MobileViewPostAState();
  }
}

class _MobileViewPostAState extends State<MobileViewPostA> with TickerProviderStateMixin {
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
          heroTag: null,
          child:const Icon(Icons.arrow_upward,color: Colors.black,),
          onPressed:(){
            scrollController.animateTo(0, duration: const Duration(seconds:3 ), curve:Curves.fastOutSlowIn);
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

                          child: Image.asset("assets/1.jpg"),),),
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
                                      child: Text("Why 'Better Call Saul' Was Unique",style: TextStyle(
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
                                      "The title would seem to give us the answer. The series reintroduces us to Saul Goodman (Bob Odenkirk), whom we met in Season 2 of “Breaking Bad” as the sleazy lawyer to the chemistry teacher turned drug lord, Walter White.\n\n"
                                    "But we meet him in “Saul” as Jimmy McGill, the name under which he was born, ran con jobs and first plied the law, and as Gene Takavic, the alias under which he goes into hiding and manages a Cinnabon in Nebraska after Walt’s meth operation crumbles.\n\n"
                                        "Jimmy is hungry and hustling; Saul, preening and peacocky; Gene, beaten and bitter. Each has a little of the others in him. In its closing run, “Better Call Saul” has jumped about in time, shuffling these identities like the moving targets in a shell game. Which one holds the pea?.\n\n"
                                    "Monday night, the series delivered its answer, in an understatedly potent finale that engaged the themes that allowed the series to — mostly — avoid the fate of the superfluous sequel. If “Breaking Bad” traced one man’s course from schmuckdom to villainy, “Better Call Saul” asked, more broadly: How do we become who we are? Do we have a choice in the matter? And what does it take to become a new person?.\n\n"
                                    "The Jimmy we meet in the “Better Call Saul” premiere — set in 2002, six years before the events of “Breaking Bad” — is a hapless public defender who dreams of emulating his big brother, Chuck (Michael McKean), a respected New Mexico lawyer. Chuck’s law partner, Howard Hamlin (Patrick Fabian), rebuffs Jimmy’s efforts to join the firm while Chuck offers Jimmy the well-meaning but patronizing advice to knuckle down, know his limitations and be patient..\n\n"
          "Patience is not in the skill set of Jimmy, a former slip-and-fall artist with the gift of gab. His wheels do not grind slowly but exceedingly fine; they run on overdrive and throw off sparks. Why, he wonders, should he be demeaned for his talents? Why should propriety keep his motormouth stuck in first gear?.\n\n"
          "He finds an ally, and eventually a wife, in Kim Wexler (Rhea Seehorn, giving one of TV’s most fine-tuned performances), a lawyer in Howard and Chuck’s firm. She’s both balance and accomplice, a cooler customer who shares Jimmy’s gift for the grift..\n\n"
        "Editors’ Picks.\n\n"
        "Alex Katz Is Still Perfecting His Craft.\n\n"
            "Kamila Valieva, Supernova.\n\n"
         "   Boomers Are All the Rage.\n\n"
        "Continue reading the main story.\n\n"
        "But Jimmy can’t keep his scam artistry a hobby. It consumes him; it becomes him. He pulls a vengeance scheme that drives Chuck to suicide. He adopts his trade name — ’s all good, man — and builds a customer base of drug dealers. With Kim’s help, he runs a plot to ruin Howard’s reputation that inadvertently leads, in this year’s midseason finale, to Howard’s murder by one of Saul’s gangster clients..\n\n"
        "The shock of the killing ends his and Kim’s marriage; the guilt of it derails her legal career. The incident also initiates the end of the series’s weaker half, a drug-world thriller that re-creates the blood-soaked narco-noir exploits that Walter White fans had come to expect..\n\n"
        "With the “Breaking Bad 2: Breaking Badder” section of the story line complete, the creators, Vince Gilligan and Peter Gould, focused on their central characters in the final run. Despite the reappearance in flashbacks of Bryan Cranston as Walter White and Aaron Paul as his sidekick, Jesse Pinkman, the last half-season is less an attempt to reprise “Breaking Bad” and more a productive conversation with it — maybe even a friendly argument..\n\n"
        "“Breaking Bad” is an intensely moral show with no illusions about Walter’s depravity. But it is also intoxicated with his criminal genius. Walter, financially struggling and stricken with lung cancer, finds virility and purpose in his heinous deeds. He breaks both bad and badass..\n\n"
        "In “Better Call Saul,” crime is mostly just sad, the more so the closer the series gets to its end. The closing episodes return to Gene in his Nebraska exile, shot in blood-draining black-and-white and looking like an off-brand Walter White, down to the soup-strainer mustache..\n\n"
        "As Saul says of Walter, in a late-season flashback, “Guy with that mustache probably doesn’t make a lot of good life choices.” Now he seems to be proving his own point. To replenish his nest egg, and maybe his sense of self-worth, Gene enlists a dim-bulb taxi driver to rob a department store, then to help him fleece a string of rich marks, ending with a cancer patient..\n\n"
        "It’s a sad-sack version of the final spree that left Walter with a pile of cash the size of a California king mattress. It ends ignominiously, with Gene ID’d by the elderly woman (Carol Burnett) whom he deceived to start his ruse. It wasn’t even that hard, she tells him: “I typed in ‘con man’ and ‘Albuquerque.’” The man who eluded the law and survived the cartel gets brought down by Eunice Higgins..\n\n"
        "Over a decade and a half, the “Bad”-iverse has developed a lot of narrative real estate. The final run of “Saul” keeps finding little pockets of story to revisit within it, restaging Saul’s first run-in with Walter and having Kim meet Jesse during the “Breaking Bad” timeline, at a crucial moment in both their lives..\n\n"
        "The finale, likewise, gets its theme and structure from three flashbacks with now-dead characters — Mike, Walter and Chuck — each of which involves the idea of going back and changing one’s life path. Mike tells him that he would go back to the day he took his first bribe as a police officer and his life went off track. Then, he says, he would go into the future: “There’s some people I’d like to check on.”.\n\n"
        "Mike is describing “Better Call Saul” itself. Both prequel and sequel, it is a time machine that moves backward to find how a man went wrong and forward to see where he ends up. And like many a sci-fi time-travel story, it explores how much of our fate is within our control..\n\n"
      "   As Saul tells Walter (in a scene that picks up from their last encounter in “Breaking Bad”), his time-machine hypothetical is a “thought experiment.” But it’s also the kind of cheater’s fantasy that has always appealed to him — a shortcut, a quick fix, a loophole to beat the system..\n\n"
    "It’s the kind of easy way out that he seems to find halfway into the finale, when he turns on the blarney spigot one more time to talk his way into a cushy plea deal. But what Jimmy/Saul/Gene finally has to accept is that there is no one weird trick to set his life right. He can’t call a mulligan. He lives in a time machine that only goes forward..\n\n"
    "But he doesn’t discover this by himself. Kim has long been the moral center of the show, not because she’s a paragon but because of her willingness to deal more honestly with her flaws. Learning that his ex-wife has confessed her guilt to Howard’s widow does for Jimmy what Chuck couldn’t: It convinces him to do the right thing, the hard way..\n\n"
    "The “Breaking Bad” finale is set up as a series of wins for Walter — he defeats his enemies and secures his family’s finances — ending in a death penalty on his own terms. The climax of “Saul” seems at first to be going a similar way. Instead, the protagonist utters something you would never expect to hear from Saul Goodman in a courtroom — the truth — and blows up his plea deal..\n\n"
    "Unlike Walter White, he doesn’t find a way to have his fate and cheat it too. He doesn’t, as when Walter clears his wife on a phone call with police listening in, instantly end Kim’s troubles. He doesn’t go out in a blaze of glory. He sentences himself to life. As Saul says to Walter White in one of their first “Breaking Bad” meetings, “Conscience gets expensive, doesn’t it?”.\n\n"
    "Maybe he is finally less comparable to Walter White than to Don Draper of “Mad Men,” another fast-talking slick in a suit whose words save him until they don’t, who is taken with the idea of time machines, who has a history of changing his name and running from trouble. His endgame is not that of a gangster facing down the law but, like Don, of a man finding integrity in his splintered identity..\n\n"
    "At last he can be himself, and, in its closing run, so could “Better Call Saul.” I don’t want to make too much of the much-heralded End of the Antihero — “Barry” is still around, for starters. But at a nearly 15-year run, “Breaking Bad” and “Saul” make an era unto themselves..\n\n"
    "“Saul” had the benefits of experience without the complacency of incumbency. It was one of the best-made shows on TV — confident, attentive to detail and gorgeously composed. (Check out the final sequence’s reprise of Kim and Jimmy sharing a cigarette in a slant of light.) It challenged itself to be more than a new version of a thing you used to like. And it ended true to its ideas and its protagonist..\n\n"
    "So who is this guy in the end? The finale’s title, “Saul Gone,” tips us off. “Gene Takavic” died in the Nebraska dumpster where the police arrested him. “Saul Goodman” lives on as a legend to his fellow inmates who know him from his TV ads. But we leave knowing him by the name he finally gives the judge..\n\n"
    "Call him James McGill. He is no longer Saul. He may yet be a good man..\n\n"
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
                                           Navigator.pushReplacementNamed(context, "/postb");
                                         }, child: const Text("Next>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                         const Text("---",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),),
                                         TextButton(onPressed: (){
                                           Navigator.pushReplacementNamed(context, "/posth");
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



class PostA extends StatefulWidget {
  const PostA({Key? key}) : super(key: key);

  @override
  State<PostA> createState() => _PostAState();
}

class _PostAState extends State<PostA> with TickerProviderStateMixin {

  var scaffoldKey =GlobalKey<ScaffoldState>();

  late ScrollController scrollController = ScrollController();

  late double screenWidth;
  late double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child:const Icon(Icons.arrow_upward,color: Colors.black,),
          heroTag: null,
          onPressed:(){
            scrollController.animateTo(0, duration: const Duration(seconds:2 ), curve:Curves.fastOutSlowIn);
          }
      ),
      key:scaffoldKey,
      backgroundColor: Colors.white,
      body:screenWidth < 1025 ? const MobileViewPostA() : LayoutBuilder(
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
                      Flexible(child:Image.asset("assets/1.jpg",width: screenWidth < 769 ? 500 : 1000,),),
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
                                      child: Text("Why 'Better Call Saul' Was Unique",style: TextStyle(
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
                                          "The title would seem to give us the answer. The series reintroduces us to Saul Goodman (Bob Odenkirk), whom we met in Season 2 of “Breaking Bad” as the sleazy lawyer to the chemistry teacher turned drug lord, Walter White..\n\n"
                                          "But we meet him in “Saul” as Jimmy McGill, the name under which he was born, ran con jobs and first plied the law, and as Gene Takavic, the alias under which he goes into hiding and manages a Cinnabon in Nebraska after Walt’s meth operation crumbles..\n\n"
                                          "Jimmy is hungry and hustling; Saul, preening and peacocky; Gene, beaten and bitter. Each has a little of the others in him. In its closing run, “Better Call Saul” has jumped about in time, shuffling these identities like the moving targets in a shell game. Which one holds the pea?.\n\n"
                                          "Monday night, the series delivered its answer, in an understatedly potent finale that engaged the themes that allowed the series to — mostly — avoid the fate of the superfluous sequel. If “Breaking Bad” traced one man’s course from schmuckdom to villainy, “Better Call Saul” asked, more broadly: How do we become who we are? Do we have a choice in the matter? And what does it take to become a new person?.\n\n"
                                          "The Jimmy we meet in the “Better Call Saul” premiere — set in 2002, six years before the events of “Breaking Bad” — is a hapless public defender who dreams of emulating his big brother, Chuck (Michael McKean), a respected New Mexico lawyer. Chuck’s law partner, Howard Hamlin (Patrick Fabian), rebuffs Jimmy’s efforts to join the firm while Chuck offers Jimmy the well-meaning but patronizing advice to knuckle down, know his limitations and be patient..\n\n"
                                          "Patience is not in the skill set of Jimmy, a former slip-and-fall artist with the gift of gab. His wheels do not grind slowly but exceedingly fine; they run on overdrive and throw off sparks. Why, he wonders, should he be demeaned for his talents? Why should propriety keep his motormouth stuck in first gear?.\n\n"
                                          "He finds an ally, and eventually a wife, in Kim Wexler (Rhea Seehorn, giving one of TV’s most fine-tuned performances), a lawyer in Howard and Chuck’s firm. She’s both balance and accomplice, a cooler customer who shares Jimmy’s gift for the grift..\n\n"
                                          "Editors’ Picks.\n\n"
                                          "Alex Katz Is Still Perfecting His Craft.\n\n"
                                          "Kamila Valieva, Supernova.\n\n"
                                          "   Boomers Are All the Rage.\n\n"
                                          "Continue reading the main story.\n\n"
                                          "But Jimmy can’t keep his scam artistry a hobby. It consumes him; it becomes him. He pulls a vengeance scheme that drives Chuck to suicide. He adopts his trade name — ’s all good, man — and builds a customer base of drug dealers. With Kim’s help, he runs a plot to ruin Howard’s reputation that inadvertently leads, in this year’s midseason finale, to Howard’s murder by one of Saul’s gangster clients..\n\n"
                                          "The shock of the killing ends his and Kim’s marriage; the guilt of it derails her legal career. The incident also initiates the end of the series’s weaker half, a drug-world thriller that re-creates the blood-soaked narco-noir exploits that Walter White fans had come to expect..\n\n"
                                          "With the “Breaking Bad 2: Breaking Badder” section of the story line complete, the creators, Vince Gilligan and Peter Gould, focused on their central characters in the final run. Despite the reappearance in flashbacks of Bryan Cranston as Walter White and Aaron Paul as his sidekick, Jesse Pinkman, the last half-season is less an attempt to reprise “Breaking Bad” and more a productive conversation with it — maybe even a friendly argument..\n\n"
                                          "“Breaking Bad” is an intensely moral show with no illusions about Walter’s depravity. But it is also intoxicated with his criminal genius. Walter, financially struggling and stricken with lung cancer, finds virility and purpose in his heinous deeds. He breaks both bad and badass..\n\n"
                                          "In “Better Call Saul,” crime is mostly just sad, the more so the closer the series gets to its end. The closing episodes return to Gene in his Nebraska exile, shot in blood-draining black-and-white and looking like an off-brand Walter White, down to the soup-strainer mustache..\n\n"
                                          "As Saul says of Walter, in a late-season flashback, “Guy with that mustache probably doesn’t make a lot of good life choices.” Now he seems to be proving his own point. To replenish his nest egg, and maybe his sense of self-worth, Gene enlists a dim-bulb taxi driver to rob a department store, then to help him fleece a string of rich marks, ending with a cancer patient..\n\n"
                                          "It’s a sad-sack version of the final spree that left Walter with a pile of cash the size of a California king mattress. It ends ignominiously, with Gene ID’d by the elderly woman (Carol Burnett) whom he deceived to start his ruse. It wasn’t even that hard, she tells him: “I typed in ‘con man’ and ‘Albuquerque.’” The man who eluded the law and survived the cartel gets brought down by Eunice Higgins..\n\n"
                                          "Over a decade and a half, the “Bad”-iverse has developed a lot of narrative real estate. The final run of “Saul” keeps finding little pockets of story to revisit within it, restaging Saul’s first run-in with Walter and having Kim meet Jesse during the “Breaking Bad” timeline, at a crucial moment in both their lives..\n\n"
                                          "The finale, likewise, gets its theme and structure from three flashbacks with now-dead characters — Mike, Walter and Chuck — each of which involves the idea of going back and changing one’s life path. Mike tells him that he would go back to the day he took his first bribe as a police officer and his life went off track. Then, he says, he would go into the future: “There’s some people I’d like to check on.”.\n\n"
                                          "Mike is describing “Better Call Saul” itself. Both prequel and sequel, it is a time machine that moves backward to find how a man went wrong and forward to see where he ends up. And like many a sci-fi time-travel story, it explores how much of our fate is within our control..\n\n"
                                          "   As Saul tells Walter (in a scene that picks up from their last encounter in “Breaking Bad”), his time-machine hypothetical is a “thought experiment.” But it’s also the kind of cheater’s fantasy that has always appealed to him — a shortcut, a quick fix, a loophole to beat the system..\n\n"
                                          "It’s the kind of easy way out that he seems to find halfway into the finale, when he turns on the blarney spigot one more time to talk his way into a cushy plea deal. But what Jimmy/Saul/Gene finally has to accept is that there is no one weird trick to set his life right. He can’t call a mulligan. He lives in a time machine that only goes forward..\n\n"
                                          "But he doesn’t discover this by himself. Kim has long been the moral center of the show, not because she’s a paragon but because of her willingness to deal more honestly with her flaws. Learning that his ex-wife has confessed her guilt to Howard’s widow does for Jimmy what Chuck couldn’t: It convinces him to do the right thing, the hard way..\n\n"
                                          "The “Breaking Bad” finale is set up as a series of wins for Walter — he defeats his enemies and secures his family’s finances — ending in a death penalty on his own terms. The climax of “Saul” seems at first to be going a similar way. Instead, the protagonist utters something you would never expect to hear from Saul Goodman in a courtroom — the truth — and blows up his plea deal..\n\n"
                                          "Unlike Walter White, he doesn’t find a way to have his fate and cheat it too. He doesn’t, as when Walter clears his wife on a phone call with police listening in, instantly end Kim’s troubles. He doesn’t go out in a blaze of glory. He sentences himself to life. As Saul says to Walter White in one of their first “Breaking Bad” meetings, “Conscience gets expensive, doesn’t it?”.\n\n"
                                          "Maybe he is finally less comparable to Walter White than to Don Draper of “Mad Men,” another fast-talking slick in a suit whose words save him until they don’t, who is taken with the idea of time machines, who has a history of changing his name and running from trouble. His endgame is not that of a gangster facing down the law but, like Don, of a man finding integrity in his splintered identity..\n\n"
                                          "At last he can be himself, and, in its closing run, so could “Better Call Saul.” I don’t want to make too much of the much-heralded End of the Antihero — “Barry” is still around, for starters. But at a nearly 15-year run, “Breaking Bad” and “Saul” make an era unto themselves..\n\n"
                                          "“Saul” had the benefits of experience without the complacency of incumbency. It was one of the best-made shows on TV — confident, attentive to detail and gorgeously composed. (Check out the final sequence’s reprise of Kim and Jimmy sharing a cigarette in a slant of light.) It challenged itself to be more than a new version of a thing you used to like. And it ended true to its ideas and its protagonist..\n\n"
                                          "So who is this guy in the end? The finale’s title, “Saul Gone,” tips us off. “Gene Takavic” died in the Nebraska dumpster where the police arrested him. “Saul Goodman” lives on as a legend to his fellow inmates who know him from his TV ads. But we leave knowing him by the name he finally gives the judge..\n\n"
                                          "Call him James McGill. He is no longer Saul. He may yet be a good man..\n\n"
                                        ,style: TextStyle(fontFamily: "DynaPuff",fontSize: 25,letterSpacing: 1.2),),
                                    ),
                                  ],
                                ),
                              SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/postb");
                                    }, child: const Text("Next>>",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 20),)),
                                    TextButton(onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/posth");
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

