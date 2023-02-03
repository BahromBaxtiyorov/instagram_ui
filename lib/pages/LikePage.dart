import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../items/likeItem.dart';
import '../states(attributes).dart';

class LikePage extends StatefulWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
          leading:Icon(Icons.turn_left,size:30),
        actions: [
          Icon(Icons.wifi,size:30),
          SizedBox(width:10,),
          Icon(Icons.search,size:30),
          SizedBox(width:5),
          Icon(Icons.more_vert,size:30),
          SizedBox(width:3,),
        ],
      ),
        body: SingleChildScrollView(
           child: ListView.builder(
               shrinkWrap: true,
               itemCount: likeList.length,
               physics: NeverScrollableScrollPhysics(),
               itemBuilder: (context, index){
                 return likeItem(context,likeList[index],
                     delete: () {likeList.remove(index);
                 setState(() {});}
                 );
               }
           )
        )
    );
  }
}
