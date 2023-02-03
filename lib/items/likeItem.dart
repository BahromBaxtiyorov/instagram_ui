import 'package:flutter/material.dart';

import '../models/LikeModels.dart';
import '../states(attributes).dart';

Widget likeItem (BuildContext context, LikeModel like, { required void Function() delete}) {
return SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(like.images),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Positioned(
                      left: 100,
                      bottom: 7,
                      child: Container(
                        color: Colors.black,
                          child: Text(like.time,style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w300))),
                      ),
              ]
            ),
            SizedBox(width: 5,),
            Column(
              children: [
                Text(like.video,style:TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),maxLines: 3,),
                SizedBox(height: 5,),
                Text(like.videoname,style:TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300)),
                SizedBox(height: 5,),
                Text(like.seen,style:TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300)),
              ],
            ),
            SizedBox(width:4),
            IconButton(
              icon: Icon(Icons.more_vert,color: Colors.white),
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.only(left:10.0,right:10),
                          child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade700,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  )
                              ),
                              child: SingleChildScrollView(
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 20,),
                                        Row(
                                          children: [
                                            Icon(Icons.access_time,color: Colors.white,size:28,),
                                            SizedBox(width: 20,),
                                            Text("Save to watch later",style: TextStyle(color: Colors.white,fontSize: 17)),
                                          ],
                                        ),
                                        SizedBox(height: 30,),
                                        Row(
                                          children: [
                                            Icon(Icons.save_alt,color: Colors.white,size:25,),
                                            SizedBox(width: 20,),
                                            Text("Save to playlist",style: TextStyle(color: Colors.white,fontSize: 16)),
                                          ],
                                        ),
                                        SizedBox(height: 30,),
                                        Row(
                                          children: [
                                            Icon(Icons.download,color: Colors.white,size:25,),
                                            SizedBox(width: 20,),
                                            Text("Download Video",style: TextStyle(color: Colors.white,fontSize: 16)),
                                          ],
                                        ),
                                        SizedBox(height: 30,),
                                        Row(
                                          children: [
                                            Icon(Icons.share,color: Colors.white,size:25,),
                                            SizedBox(width: 20,),
                                            Text("Share",style: TextStyle(color: Colors.white,fontSize: 16)),
                                          ],
                                        ),
                                        SizedBox(height: 30,),
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(Icons.stop_circle_sharp,color: Colors.white,size:25,),
                                              onPressed: () {
                                                delete;
                                                Navigator.pop(context);
                                              },),
                                            SizedBox(width: 20,),
                                            Text("Delete",style: TextStyle(color: Colors.white,fontSize: 16)),
                                          ],
                                        )
                                      ],
                                    )
                                ),
                              )
                          ),
                        );
                      });
                },
              )
          ],
        )
      ],
    ),
  )
);
}