import 'package:flutter/material.dart';
import 'package:flutterWeb/utils/responsiveLayout.dart';
import 'package:flutterWeb/widgets/sendBtn.dart';

class InitialScren extends StatefulWidget {
  @override
  _InitialScrenState createState() => _InitialScrenState();
}

class _InitialScrenState extends State<InitialScren> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (!Responsivelayout.isSmallScren(context))
          ? _largeBody()
          : _smallBody(),
    );
  }

  Widget _smallBody() {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(left: 48),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                'Olá,',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff8591b0),
                ),
              ),
              RichText(
                text: TextSpan(
                    text: 'Bem vindo à ',
                    style: TextStyle(
                      fontSize: 60,
                      color: Color(0xff8591b0),
                    ),
                    children: [
                      TextSpan(
                        text: 'Fruhauf\'s',
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      )
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, top: 20),
                child: Text(
                  'Explore o universo Web',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Center(
                child: Container(
                  width: 400,
                  child: Image.network(
                    'images/home_bg1.svg',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4,
                  right: 74, //Responsivelayout.isSmallScren(context) ? 4 : 74,
                  top: 10,
                  bottom: 40,
                ),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 8),
                        blurRadius: 8,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 8,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Fruhauf\'s',
                            ),
                          ),
                        ),
                        SendBtn(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }

  Widget _largeBody() {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Responsivelayout.isSmallScren(context)
                ? Alignment.topRight
                : Alignment.centerRight,
            widthFactor: .5,
            child: Image.network(
              'images/home_bg1.svg',
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Olá,',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff8591b0),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Bem vindo à ',
                        style: TextStyle(
                          fontSize: 60,
                          color: Color(0xff8591b0),
                        ),
                        children: [
                          TextSpan(
                            text: 'Fruhauf\'s',
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          )
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12, top: 20),
                    child: Text(
                      'Explore o universo Web',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4,
                      right: Responsivelayout.isSmallScren(context) ? 4 : 74,
                      top: 10,
                      bottom: 40,
                    ),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 8),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 8,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Informe seu email',
                                ),
                              ),
                            ),
                            SendBtn(),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
