import 'package:calculator/brain/brain.dart';
import 'package:calculator/components/my_buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOperator(String o) {
    if (o == '%' || o == '/' || o == 'X' || o == '+' || o == '-' || o == '=') {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  )),
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return MyButton(
                      title: buttons[index],
                      color: Colors.green[900],
                      textColor: Colors.white,
                    );
                  } else if (index == 1) {
                    return MyButton(
                      title: buttons[index],
                      color: Colors.red[900],
                      textColor: Colors.white,
                    );
                  } else {
                    return MyButton(
                      color: isOperator(buttons[index])
                          ? Colors.blue[900]
                          : Colors.lightBlue[50],
                      title: buttons[index],
                      textColor: isOperator(buttons[index])
                          ? Colors.white
                          : Colors.black,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
