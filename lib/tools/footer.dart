import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class FooterDesktop extends StatelessWidget {
  const FooterDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top:50.0),
      color: Colors.black,
      child: Column(
        children: [
          screenWidth < 769 ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width:250,
                    child:
                    Column(
                        children: [
                          const Text(
                            "ABOUT",
                            style: TextStyle(
                                fontFamily: "Silkscreen",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              color:Colors.white
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top:20.0),
                            padding: const EdgeInsets.only(top:20.0),
                              width: screenWidth <321 ? 200 : 300,
                            decoration: const BoxDecoration(
                                border:Border(
                                    top: BorderSide(width: 0.3,color: Colors.black)
                                )
                            ),
                            child: const Text("This is my blog website made with Flutter and made for Gigabyte Ltd. Corporation for about my internship.",
                                style:TextStyle(fontFamily: "DynaPuff",letterSpacing: 0.5,height: 1.5,color:Colors.white)
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(
                    width:250,
                    child:
                    Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top:40.0),
                            child: const Text(
                              "FOLLOW US",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Silkscreen",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top:20.0),
                            padding: const EdgeInsets.only(top:20.0),
                            decoration: const BoxDecoration(
                                border:Border(
                                    top: BorderSide(width: 0.3,color: Colors.white)
                                )
                            ),
                            child: RichText(
                              text:TextSpan(
                                text:"About Us",
                                style:const TextStyle(fontFamily: "DynaPuff",
                                    letterSpacing: 0.5,
                                    height: 1.5,color: Colors.white),
                                recognizer: TapGestureRecognizer()..onTap = ()async{
                                  final Uri url=Uri.parse('github.com/YilanCemal/');
                                  if(await canLaunchUrl(url)){
                                    launchUrl(url);
                                  }
                                },
                                children:[
                                  TextSpan(text:"\nBlog",
                                      recognizer:TapGestureRecognizer()..onTap = ()async{
                                        final Uri url=Uri.parse('https://www.linkedin.com/in/cemal-üçyiğit-bulut-727519237/');
                                        if(await canLaunchUrl(url)){
                                          launchUrl(url);
                                        }
                                      }
                                  ),
                                  TextSpan(text:"\nFAQ",
                                      recognizer:TapGestureRecognizer()..onTap = ()async{
                                        final Uri url=Uri.parse('https://www.facebook.com/cemal.ucyigit.3/ ');
                                        if(await canLaunchUrl(url)){
                                          launchUrl(url);
                                        }
                                      }
                                  )
                                ],
                              ),

                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(
                    width:250,
                    child:
                    Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top:40.0),
                            child: const Text(
                              "FOLLOW US",
                              style: TextStyle(
                                color: Colors.white,
                                  fontFamily: "Silkscreen",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top:20.0),
                            padding: const EdgeInsets.only(top:20.0),
                            decoration: const BoxDecoration(
                                border:Border(
                                    top: BorderSide(width: 0.3,color: Colors.white)
                                )
                            ),
                            child: RichText(
                              text:TextSpan(
                                text:"GitHub",
                                style:const TextStyle(fontFamily: "DynaPuff",
                                    letterSpacing: 0.5,
                                    height: 1.5,color: Colors.white),
                                recognizer: TapGestureRecognizer()..onTap = ()async{
                                  final Uri url=Uri.parse('github.com/YilanCemal/');
                                  if(await canLaunchUrl(url)){
                                    launchUrl(url);
                                  }
                                },
                                children:[
                                  TextSpan(text:"\nLinkedin",
                                      recognizer:TapGestureRecognizer()..onTap = ()async{
                                        final Uri url=Uri.parse('https://www.linkedin.com/in/cemal-üçyiğit-bulut-727519237/');
                                        if(await canLaunchUrl(url)){
                                          launchUrl(url);
                                        }
                                      }
                                  ),
                                  TextSpan(text:"\nFaceBook",
                                      recognizer:TapGestureRecognizer()..onTap = ()async{
                                        final Uri url=Uri.parse('https://www.facebook.com/cemal.ucyigit.3/ ');
                                        if(await canLaunchUrl(url)){
                                          launchUrl(url);
                                        }
                                      }
                                  )
                                ],
                              ),

                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(
                      width:350,
                      child: Column(
                        children: [
                          Container(
                            width: screenWidth <321 ? 150 : 300,
                            margin: const EdgeInsets.only(top:40.0),
                            child:
                          const Text(
                            "SIGN UP FOR NEWSLETTER",
                            style: TextStyle(
                                fontFamily: "Silkscreen",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              color: Colors.white
                            ),
                          ),
                          ),
                          const Text("Signup to get updates on articles",
                              style:TextStyle(fontFamily: "DynaPuff",letterSpacing: 0.5,height: 1.5,color:Colors.white)
                          ),
                          Container(
                              width: screenWidth < 321 ? 200:300,
                            margin: const EdgeInsets.only(top:25.0),
                            child:  const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Your email address',
                              ),),
                          ),
                          Container(
                              width: screenWidth <321 ? 200 : 300,
                              margin: const EdgeInsets.only(top:10),
                              child: Material(
                                color: Colors.white,
                                child: InkWell(
                                  highlightColor: Colors.grey,
                                  child: Ink(
                                    height: 50,
                                    child: const Center(child: Text("Subscribe",style: TextStyle(color: Colors.white,letterSpacing: 1.5,fontSize: 15),),),
                                  ),
                                  onTap: () {},
                                ),
                              )
                          )
                        ],
                      )
                  ),

                ],
              )
            ],
          ) :
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width:250,
                child:
                Column(
                    children: [
                      const Text(
                        "ABOUT",
                        style: TextStyle(
                            fontFamily: "Silkscreen",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          color:Colors.white
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top:20.0),
                        padding: const EdgeInsets.only(top:20.0),
                        decoration: const BoxDecoration(
                            border:Border(
                                top: BorderSide(width: 0.3,color: Colors.black)
                            )
                        ),
                        child: const Text("This is my blog website made with Flutter and made for Gigabyte Ltd. Corporation for about my internship.",
                            style:TextStyle(fontFamily: "DynaPuff",letterSpacing: 0.5,height: 1.5,color: Colors.white)
                        ),
                      )
                    ]
                ),
              ),
              SizedBox(
                width:250,
                child:
                Column(
                    children: [
                      const Text(
                        "Site Links",
                        style: TextStyle(
                            fontFamily: "Silkscreen",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color:Colors.white
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top:20.0),
                        padding: const EdgeInsets.only(top:20.0),
                        decoration: const BoxDecoration(
                            border:Border(
                                top: BorderSide(width: 0.3,color: Colors.black)
                            )
                        ),
                        child: RichText(
                          text:TextSpan(
                            text:"About Us",
                            style:const TextStyle(fontFamily: "DynaPuff",
                                letterSpacing: 0.5,
                                height: 1.5,
                                color: Colors.white
                            ),
                            recognizer: TapGestureRecognizer()..onTap = ()async{
                              final Uri url=Uri.parse('github.com/YilanCemal/');
                              if(await canLaunchUrl(url)){
                                launchUrl(url);
                              }
                            },
                            children:[
                              TextSpan(text:"\nBlog",
                                  recognizer:TapGestureRecognizer()..onTap = ()async{
                                    final Uri url=Uri.parse('https://www.linkedin.com/in/cemal-üçyiğit-bulut-727519237/');
                                    if(await canLaunchUrl(url)){
                                      launchUrl(url);
                                    }
                                  }
                              ),
                              TextSpan(text:"\nFAQ",
                                  recognizer:TapGestureRecognizer()..onTap = ()async{
                                    final Uri url=Uri.parse('https://www.facebook.com/cemal.ucyigit.3/ ');
                                    if(await canLaunchUrl(url)){
                                      launchUrl(url);
                                    }
                                  }
                              )
                            ],
                          ),

                        ),
                      )
                    ]
                ),
              ),
              SizedBox(
                width:250,
                child:
                Column(
                    children: [
                      const Text(
                        "FOLLOW US",
                        style: TextStyle(
                            fontFamily: "Silkscreen",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          color:Colors.white
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top:20.0),
                        padding: const EdgeInsets.only(top:20.0),
                        decoration: const BoxDecoration(
                            border:Border(
                                top: BorderSide(width: 0.3,color: Colors.black)
                            )
                        ),
                        child: RichText(
                          text:TextSpan(
                            text:"GitHub",
                            style:const TextStyle(fontFamily: "DynaPuff",
                                letterSpacing: 0.5,
                                height: 1.5,
                              color: Colors.white
                            ),
                            recognizer: TapGestureRecognizer()..onTap = ()async{
                              final Uri url=Uri.parse('github.com/YilanCemal/');
                              if(await canLaunchUrl(url)){
                                launchUrl(url);
                              }
                            },
                            children:[
                              TextSpan(text:"\nLinkedin",
                                  recognizer:TapGestureRecognizer()..onTap = ()async{
                                    final Uri url=Uri.parse('https://www.linkedin.com/in/cemal-üçyiğit-bulut-727519237/');
                                    if(await canLaunchUrl(url)){
                                      launchUrl(url);
                                    }
                                  }
                              ),
                              TextSpan(text:"\nFaceBook",
                                  recognizer:TapGestureRecognizer()..onTap = ()async{
                                    final Uri url=Uri.parse('https://www.facebook.com/cemal.ucyigit.3/ ');
                                    if(await canLaunchUrl(url)){
                                      launchUrl(url);
                                    }
                                  }
                              )
                            ],
                          ),

                        ),
                      )
                    ]
                ),
              ),
              SizedBox(
              width: screenWidth < 1025 ? 200 : screenWidth <321 ? 200 : 350,
                  child: Column(
                    children: [
                      const Text(
                        "SIGN UP FOR NEWSLETTER",
                        style: TextStyle(
                            fontFamily: "Silkscreen",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          color:Colors.white
                        ),
                      ),
                      SizedBox(
                        width: screenWidth < 1025 ? 200 : screenWidth <321 ? 200 : 350,
                        child: const Text("Signup to get updates on articles",
                            style:TextStyle(fontFamily: "DynaPuff",color:Colors.white)
                        ),
                      ),
                      Container(
                        width: screenWidth < 1025 ? 200 : screenWidth <321 ? 200 : 350,
                        margin: const EdgeInsets.only(top:25.0),
                        child:  const TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: 'Your email address',
                          ),),
                      ),
                      Container(
                          width: 300,
                          margin: const EdgeInsets.only(top:10),
                          child: Material(
                            color: Colors.white,
                            child: InkWell(
                              highlightColor: Colors.grey,
                              child: Ink(
                                height: 50,
                                child: const Center(child: Text("Subscribe",style: TextStyle(color: Colors.black,letterSpacing: 1.5,fontSize: 15),),),
                              ),
                              onTap: () {},
                            ),
                          )
                      )
                    ],
                  )
              ),

            ],
          ),
          Container(
            margin: const EdgeInsets.only(top:20),
          width: screenWidth <321 ? 200 : 300,
           child:Text(
               "©Copyright Cemal Üçyiğit Bulut",
           style: TextStyle(fontFamily: "Silkscreen",color: Colors.white.withOpacity(0.6),fontSize: 10),
           )
          )
        ],)
    );
  }
}

