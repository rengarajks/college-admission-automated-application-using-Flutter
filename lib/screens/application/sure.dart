import 'package:enrolin/screens/application/createappl.dart';
import 'package:enrolin/screens/application/success.dart';
import 'package:enrolin/screens/feed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class sure extends StatelessWidget {
  const sure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 350,
            ),
            Text("Are you sure to make an application?"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 ElevatedButton(
                  onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>success()));
                  },
                  child: Text('YES'),
                ),
                 ElevatedButton(
                  onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>createappln()));
                  },
                  child: Text('NO'),
                ),
              ],
            )
            
          ],
        )
      ),
    );
  }
}