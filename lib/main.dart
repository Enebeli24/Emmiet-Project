import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}




class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 6;
    var rightDiceNumber = 5;
    return Center(
      child: Row(

        children: [
          Expanded(
            child:TextButton(
              onPressed: (){
                print("left button got pressed");
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),),
          ),
          Expanded(
              child: TextButton(
                  onPressed: (){
                    print("right button got pressed");
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'))
          ),
        ],
      ),
    );

  }
}



