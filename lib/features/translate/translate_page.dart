import 'package:flutter/material.dart';
import 'package:safeyatra/widgets/drop_down_button.dart';

class TranslatePage extends StatefulWidget {
  const TranslatePage({super.key});

  @override
  State<TranslatePage> createState() => _TranslatePageState();
}

class _TranslatePageState extends State<TranslatePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownMenuExample(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
                child: Center(
                  child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(Icons.swap_horiz,color: Colors.black87,),
                ))
              ),
              DropdownMenuExample()
            ],
          ),
          SizedBox(height: 40),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: BoxBorder.all(
                color: Colors.grey
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row (  
                    children: [
                      Text("Speak in the selected language")
                    ],
                  ),
                  SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow:[
                        BoxShadow(color: Colors.lightBlue),
                        BoxShadow(color: Colors.blue),
                        BoxShadow(color: Colors.blueAccent),
                        BoxShadow(color: Colors.blueAccent),

                      ],
                      shape: BoxShape.circle
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: ()=>{}, 
                        icon: Icon(Icons.mic,color: Colors.white,)
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text("Tap the mic and start speaking")
                ]
              ),
            ),
          ),
          SizedBox(height: 20),
          Icon(Icons.arrow_downward,color: Colors.grey),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: BoxBorder.all(
                color: Colors.grey
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row (  
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Translation"),
                      IconButton(onPressed: (){}, icon: Icon(Icons.copy,color: Colors.grey))
                    ],
                  ),
                  SizedBox(height: 40),
                  Text("data"),
                  SizedBox(height: 40),
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}