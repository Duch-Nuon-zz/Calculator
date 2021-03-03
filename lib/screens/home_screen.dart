import 'package:calculation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _history = '';
  String _expression = '';

  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _history = "";
      _expression = "";
    });
  }

  void clear(String text) {
    setState(() {
      _expression = "";
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Calculator",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              _history,
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              _expression,
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomFlatButton(
                text: "AC",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: allClear,
              ),
              CustomFlatButton(
                text: "C",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: clear,
              ),
              CustomFlatButton(
                text: "<=",
                color: Colors.green,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: clear,
              ),
              CustomFlatButton(
                text: "/",
                color: Colors.green,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomFlatButton(
                text: "7",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
              CustomFlatButton(
                text: "8",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
              CustomFlatButton(
                text: "9",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
              CustomFlatButton(
                text: "*",
                color: Colors.green,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomFlatButton(
                text: "4",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
              CustomFlatButton(
                text: "5",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
              CustomFlatButton(
                text: "6",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
              CustomFlatButton(
                text: "-",
                color: Colors.green,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomFlatButton(
                text: "1",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
              CustomFlatButton(
                text: "2",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
              CustomFlatButton(
                text: "3",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
              CustomFlatButton(
                text: "+",
                color: Colors.green,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomFlatButton(
                text: ".",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
              CustomFlatButton(
                text: "0",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
              CustomFlatButton(
                text: "00",
                color: Colors.grey,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: numClick,
              ),
              CustomFlatButton(
                text: "=",
                color: Colors.green,
                textColor: Colors.white,
                borderRadius: 50,
                callBack: evaluate,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
