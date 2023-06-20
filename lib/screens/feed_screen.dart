import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enrolin/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:enrolin/utils/colors.dart';
import 'package:enrolin/utils/global_variable.dart';
import 'package:enrolin/widgets/post_card.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:
          width > webScreenSize ? webBackgroundColor : mobileBackgroundColor,
      appBar: width > webScreenSize
          ? null
          : AppBar(
            actions: [
              IconButton(icon: Icon(Icons.message), onPressed: () { 
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChatScreen()));
               },)
            ],
            
              backgroundColor: mobileBackgroundColor,
              centerTitle: true,
              title: SvgPicture.asset(
                 'assets/ic_launcher_foreground.svg',
                color: primaryColor,
                height: 120,
                
                
              ),
              /*actions: [
                IconButton(
                  icon: const Icon(
                    Icons.messenger_outline,
                    color: primaryColor,
                  ),
                  onPressed: () {},
                ),
              ],*/
            ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('posts').snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            padding: EdgeInsets.all(2),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (ctx, index) => Container(
              margin: EdgeInsets.symmetric(
                horizontal: width > webScreenSize ? width * 0.3 : 0,
                vertical: width > webScreenSize ? 15 : 0,
              ),
              child: PostCard(
                
                snap: snapshot.data!.docs[index].data(),
              ),
            ),
            
          );
        //  Divider();
        },
      ),
    );
  }
}
