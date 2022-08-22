import 'package:flutter/material.dart';

class FormComponent extends StatelessWidget {
  const FormComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top:75),
      width: screenWidth * 0.50,
      child:Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Your Name',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            child:  TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Your Email',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            child:TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Website',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            child: TextField(
              maxLines: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Your Name',
              ),
            ),
          ),
          Container(
              width: screenWidth*0.50,
              margin: const EdgeInsets.only(top:20),
              child: Material(
                color: Colors.black,
                child: InkWell(
                  highlightColor: Colors.grey,
                  child: Ink(
                    height: 50,
                    child: const Center(child: Text("Submit",style: TextStyle(color: Colors.white,letterSpacing: 1.5,fontSize: 15),),),
                  ),
                  onTap: () {},
                ),
              )
          )
        ],
      ),
    );
  }
}
