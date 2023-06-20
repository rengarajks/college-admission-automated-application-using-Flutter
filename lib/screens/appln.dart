import 'package:enrolin/screens/application/createappl.dart';
import 'package:enrolin/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/colors.dart';

class applicationpage extends StatefulWidget {
  const applicationpage({Key? key}) : super(key: key);

  @override
  State<applicationpage> createState() => _applicationpageState();
}

class _applicationpageState extends State<applicationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enroll",style: TextStyle(fontSize: 14),),
        backgroundColor: Colors.black,
      ),
      endDrawer: Drawer(


      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 350,
            ),
             InkWell(
                  child: Container(
                    child:  Text(
                            'Create new application',
                          ),
                       
                   width: double.infinity,
                    alignment: Alignment.center,
                   padding: const EdgeInsets.symmetric(vertical: 12),
                   
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: Colors.green,
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>createappln()));
                  },
                ),
                SizedBox(
                  height: 21,
                ),
              InkWell(
                  child: Container(
                    child:  Text(
                            'check status',
                          ),
                       
                   width: double.infinity,
                    alignment: Alignment.center,
                   padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: Colors.green,
                    ),
                  ),
                  onTap: (){
                   
                    
                  },
                ),
      
          ],
        ),
      ),
    );
  }
}