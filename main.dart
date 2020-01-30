import 'package:flutter/material.dart';
import 'questin_answer.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() => runApp(Harry());

class Harry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Harry_page(),
          ),
        ),
      ),
    );
  }
}

class Harry_page extends StatefulWidget {
  @override
  _Harry_pageState createState() => _Harry_pageState();
}
int score = 0;
int count = 0;

class _Harry_pageState extends State<Harry_page> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top:40),
          alignment: Alignment.center,
          child: AutoSizeText(
            "Score\n $score/$count",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: 'JosefinSans', fontSize: 40.0, color: Colors.white),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: AutoSizeText(
                QandAns.showAnswer(),
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'Lobster', fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: RaisedButton(
              color: Colors.white,
              child: AutoSizeText(
                'Options',
                style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontSize: 30.0,
                    color: Colors.purple),
              ),
              onPressed: () {
                showButton();
              },
            ),
          ),
        ),
      ],
    );
  }

  void showButton() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                color: Colors.white.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: AutoSizeText(
                              'Back to Question',
                              style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 30.0,
                                  color: Colors.purple),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              count++;
                              if(QandAns.rigth_answer(QandAns.first_option()) == 0){
                                score++;
                              }
                              Navigator.pop(context);
                              setState(() {
                                QandAns.tap();
                              });
                            },
                            child: AutoSizeText(
                              QandAns.first_option(),
                              style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 30.0,
                                  color: Colors.purple),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              count++;
                              if(QandAns.rigth_answer(QandAns.second_option()) == 0){
                                score++;
                              }
                              Navigator.pop(context);
                              setState(() {
                                QandAns.tap();
                              });
                            },
                            child: AutoSizeText(
                              QandAns.second_option(),
                              style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 30.0,
                                  color: Colors.purple),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              count++;
                              if(QandAns.rigth_answer(QandAns.third_option()) == 0){
                                score++;
                              }
                              Navigator.pop(context);
                              setState(() {
                                QandAns.tap();
                              });
                            },
                            child: AutoSizeText(
                              QandAns.third_option(),
                              style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  fontSize: 30.0,
                                  color: Colors.purple),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }
}
