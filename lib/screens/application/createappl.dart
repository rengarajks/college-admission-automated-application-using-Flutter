import 'package:enrolin/screens/application/listcol.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class createappln extends StatefulWidget {
  const createappln({Key? key}) : super(key: key);

  @override
  State<createappln> createState() => _createapplnState();
}

class _createapplnState extends State<createappln> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
         children: <Widget>[  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter your name',  
              labelText: 'Name',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.app_registration_sharp),  
              hintText: 'dd/mm/yy ',  
              labelText: 'DOB',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.supervised_user_circle_outlined),  
              hintText: 'Enter your gender',  
              labelText: 'Gender',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.question_mark_sharp),  
              hintText: 'Enter cut-off marks scored',  
              labelText: 'cut-off',  
            ),  
          ),  
           TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.book),  
              hintText: "Enter major subejct",  
              labelText: 'major subject',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: "Enter your father's name",  
              labelText: 'father name',  
            ),  
          ),  
        
           TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: "Enter your mother's name",  
              labelText: 'mother name',  
            ),  
          ),
           TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.settings_applications),  
              hintText: "Enter occupation",  
              labelText: 'occupation',  
            ),  
          ),  
           TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.monetization_on_outlined),  
              hintText: "Enter annual income",  
              labelText: 'annual income',  
            ),  
          ),  
          
          

         
          new Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: new ElevatedButton(  
                child: const Text('Submit'),  
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>collegelists()));
                  },  
              )),  
        ],  
        ),

        //child: Text("create a appln"),
      ),
    );
  }
}