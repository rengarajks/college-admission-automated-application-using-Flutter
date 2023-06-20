import 'package:checkbox_formfield/checkbox_icon_formfield.dart';
import 'package:checkbox_formfield/checkbox_list_tile_formfield.dart';
import 'package:enrolin/screens/application/sure.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math';

class collegelists extends StatefulWidget {
  const collegelists({Key? key}) : super(key: key);

  @override
  State<collegelists> createState() => _collegelistsState();
}

class _collegelistsState extends State<collegelists> {
  @override
  Widget build(BuildContext context) {
    List names = ["panimalar engineering college","saveeta engineering college","ragul engineering college","rajan engineering college","ranjith engineering college","prithvi engineering college","shankar engineering college","tamil engineering college","hrss engineering college","james engineering college"];
     List namess = ["panimalar engineering college","saveeta engineering college","ragul engineering college","rajan engineering college","ranjith engineering college","prithvi engineering college","shankar engineering college","tamil engineering college","hrss engineering college","james engineering college"];
      List namesss = ["panimalar engineering college","saveeta engineering college","ragul engineering college","rajan engineering college","ranjith engineering college","prithvi engineering college","shankar engineering college","tamil engineering college","hrss engineering college","james engineering college"];
       List namessss = ["panimalar engineering college","saveeta engineering college","ragul engineering college","rajan engineering college","ranjith engineering college","prithvi engineering college","shankar engineering college","tamil engineering college","hrss engineering college","james engineering college"];

    
    final _random = new Random();
    var element = names[_random.nextInt(names.length)];
    var elements = names[_random.nextInt(names.length)];
    var elementss = names[_random.nextInt(names.length)];
    var elementsss = names[_random.nextInt(names.length)];

     final _formKey = GlobalKey<FormState>();
  bool? checkboxIconFormFieldValue = false;
  return Scaffold(
    appBar: AppBar(
      title: Text(
        'Sample',
      ),
    ),
    body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                CheckboxListTileFormField(
                  title: Text(element),
                  onSaved: (bool? value) {
                    print(value);
                  },
                  validator: (bool? value) {
                    if (value!) {
                      return null;
                    } else {
                      return 'False!';
                    }
                  },
                  onChanged: (value) {
                    if (value) {
                      print("ListTile Checked :)");
                    } else {
                      print("ListTile Not Checked :(");
                    }
                  },
                  autovalidateMode: AutovalidateMode.always,
                  contentPadding: EdgeInsets.all(1),
                ),
                CheckboxListTileFormField(
                  title: Text(elements),
                  onSaved: (bool? value) {
                    print(value);
                  },
                  validator: (bool? value) {
                    if (value!) {
                      return null;
                    } else {
                      return 'False!';
                    }
                  },
                  onChanged: (value) {
                    if (value) {
                      print("ListTile Checked :)");
                    } else {
                      print("ListTile Not Checked :(");
                    }
                  },
                  autovalidateMode: AutovalidateMode.always,
                  contentPadding: EdgeInsets.all(1),
                ),
                CheckboxListTileFormField(
                  title: Text(elementss),
                  onSaved: (bool? value) {
                    print(value);
                  },
                  validator: (bool? value) {
                    if (value!) {
                      return null;
                    } else {
                      return 'False!';
                    }
                  },
                  onChanged: (value) {
                    if (value) {
                      print("ListTile Checked :)");
                    } else {
                      print("ListTile Not Checked :(");
                    }
                  },
                  autovalidateMode: AutovalidateMode.always,
                  contentPadding: EdgeInsets.all(1),
                ),
                CheckboxListTileFormField(
                  title: Text(elementsss),
                  onSaved: (bool? value) {
                    print(value);
                  },
                  validator: (bool? value) {
                    if (value!) {
                      return null;
                    } else {
                      return 'False!';
                    }
                  },
                  onChanged: (value) {
                    if (value) {
                      print("ListTile Checked :)");
                    } else {
                      print("ListTile Not Checked :(");
                    }
                  },
                  autovalidateMode: AutovalidateMode.always,
                  contentPadding: EdgeInsets.all(1),
                ),
              
               
                CheckboxIconFormField(
                  context: context,
                  initialValue: checkboxIconFormFieldValue,
                  enabled: true,
                  iconSize: 32,
                  onSaved: (bool? value) {
                    checkboxIconFormFieldValue = value;
                  },
                  onChanged: (value) {
                    if (value) {
                      print("Icon Checked :)");
                    } else {
                      print("Icon Not Checked :(");
                    }
                  },
                ),
                ElevatedButton(
                  
                  onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sure()));
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  }}