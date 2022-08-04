import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lec_14_rivisedrpdown_popupmenu_and_webview/first.dart';

class DropPop extends StatefulWidget {
  const DropPop({Key? key}) : super(key: key);

  @override
  State<DropPop> createState() => _DropPopState();
}

class _DropPopState extends State<DropPop> {
  List<String> menu=["My Profile",
  "Settings",
  "About us"];
  String? _gender = "M";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person),
        title: const Text("data"),
        actions: [
          PopupMenuButton(
            child: const Icon(Icons.more_vert_rounded),
            onSelected: (v) {
              //print(v);
              switch (v) {
                case 1:
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const First()));
                  break;
                case 2:
                  break;
                case 3:
                  break;
                default:
              }
            },
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: 1,
                child: Text("My profile"),
                
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Settings"),
              ),
              PopupMenuItem(
                value: 3,
                child: Text("About us"),
              ),
            ],
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton(
              value: _gender,
              items: const [
                DropdownMenuItem(
                  child: Text("Male"),
                  value: "M",
                ),
                DropdownMenuItem(
                  child: Text("Female"),
                  value: "F",
                ),
              ],
              onChanged: (v) {
                setState(() {
                  _gender = v! as String;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
