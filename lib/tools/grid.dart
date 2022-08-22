import 'package:flutter/material.dart';

class GridText extends StatefulWidget {
  const GridText({Key? key}) : super(key: key);

  @override
  State<GridText> createState() => _GridTextState();
}

class _GridTextState extends State<GridText> {


  final controller = ScrollController();

  final List<dynamic> contents =[
    {
      "picture":"assets/1.jpg",
      "title":"Why 'Better Call Saul' Was Unique",
      "excerpt":"The title would seem to give us the answer. The series reintroduces us to Saul Goodman (Bob Odenkirk), whom we met in Season 2 of “Breaking Bad” as the sleazy lawyer to the chemistry...",
      "byWho":"Cemal",
      "route":"posta"
    },
    {
      "picture":"assets/2.jpg",
      "title":"Bad Animation Movie",
      "excerpt":"Despite largely being aimed and marketed towards younger audiences, animated movies are more than capable of ascending to greatness, as evidenced by the sheer number of stone-cold ...",
      "byWho":"Cemal",
      "route":"postb"
    },
    {
      "picture":"assets/3.jpg",
      "title":"New Music Sucks or It's Society",
      "excerpt":"As I was browsing through the internet, trying not to waste too much time, I stumbled on an article in The Atlantic by Ted Gioia. In it, Gioia lamented the fact that old music (technically anything older than 18 months), specifically...",
      "byWho":"Cemal",
      "route":"postc"
    },
    {
      "picture":"assets/7.jpg",
      "title":"Bad Movie",
      "excerpt":"Moviegoers are always talking about films or directors that do not get the respect they deserve. Brilliant films are slighted at the Oscars, while tripe and offal is honoured, they say. Audiences...",
      "byWho":"Cemal",
      "route":"postd"
    },
    {
      "picture":"assets/6.jpg",
      "title":"Video Game Industry",
      "excerpt":"Video games have been around for decades, providing entertainment for children and adults alike. They have evolved significantly from the early days of computer games and the first versions...",
      "byWho":"Cemal",
      "route":"poste"
    },
    {
      "picture":"assets/8.jpg",
      "title":"How corporations are destroying video games",
      "excerpt":"Since going mainstream in the 1980s, video games have evolved from a nerdy lark to a big industry. When I say big, I mean really big: Forbes reports that in 2016, the gaming industry in the U.S. had ...",
      "byWho":"Cemal",
      "route":"postf"
    },
    {
      "picture":"assets/9.jpg",
      "title":"Why Music Sucks Now",
      "excerpt":"I only bring this up because a buddy, a very talented and supremely frustrated songwriter named Kris Montgomery Pedersen, was wondering why music sucks these days. I wanted to let him know ...",
      "byWho":"Cemal",
      "route":"postg"
    },
    {
      "picture":"assets/10.jpg",
      "title":"Why Breaking Bad Good",
      "excerpt":"The viewing experience is extremely personal and should not be meddled with. Your favourites might not resonate with mine, and that is absolutely fine. However, when we talk about some cult favourite ...",
      "byWho":"Cemal",
      "route":"posth"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[800],
       body: screenWidth > 769 ? buildGridView(context) : buildMobileGridView(context),
    );
  }

  Widget buildGridView(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
     return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio:screenWidth < 1025 ? 0.25 : 0.6,
          mainAxisSpacing: 3,
          crossAxisSpacing: 3,
        ),
        padding: const EdgeInsets.all(10),
        controller: controller,
        itemCount: contents.length,
        itemBuilder: (context, index) {
          final item = contents[index];

          return buildNumber(
              item["picture"], item["title"], item["excerpt"], item["byWho"],
              item["route"], context);
        });
  }

  Widget buildMobileGridView(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
   return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: screenWidth < 321 ? 0.1 :0.35,
        mainAxisSpacing:1,
        crossAxisSpacing: 1,
      ),
      padding: const EdgeInsets.all(30),
      controller: controller,
      itemCount: contents.length,
      itemBuilder: (context, index){
        final item = contents[index];

        return buildNumber(item["picture"], item["title"], item["excerpt"], item["byWho"], item["route"],context);
      },
    );
  }

  Widget buildNumber(String picture,String title,String excerpt,String byWho,String route,BuildContext context){
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.grey[800],
      child: Container(
          decoration: const BoxDecoration(
            border: Border(
                right: BorderSide(width: 0.1,color:Colors.black12,),
                bottom:BorderSide(width: 0.1,color:Colors.black12,) ),
          ),
          child:GridTile(
              child: Container(
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
                              image: AssetImage(picture),
                              fit:BoxFit.fill
                          )
                      ),
                    ),),
                    TextButton(onPressed: (){
                      Navigator.pushReplacementNamed(context, "/${route.toLowerCase()}");
                    }, child: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Silkscreen" ,fontSize:screenWidth < 1441 ? 18 : screenWidth < 1025 ? 24 :screenWidth <  426 ? 30 : 38,color: Colors.white),
                    )),
                    Container(
                      margin: EdgeInsets.only(top: screenWidth < 321 ? 10 : screenWidth < 426 ? 0 :10,bottom:screenWidth < 321? 10 : screenWidth < 426 ? 0 :10),
                      child: RichText(text: TextSpan(
                          text: "Posted By ",
                          style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                          children: [
                            TextSpan(text:byWho,style: const TextStyle(fontWeight: FontWeight.normal,color:Colors.white))
                          ]
                      )),
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(excerpt,style: TextStyle(fontFamily: "DynaPuff",fontSize:screenWidth < 1441 ? 15 : screenWidth < 426 ? 20 : 22,color:Colors.white),),
                    ),
                  ],
                ),
              )
          )
      ),
    );
  }
}