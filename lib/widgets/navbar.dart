import 'package:flutter/material.dart';
import 'package:flutterWeb/utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  final navLinks = ['Home', 'Produtos', 'Funcionalidades', 'Contato'];

  List<Widget> navItem() {
    return navLinks.map((link) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(
          link,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            letterSpacing: .5,
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffc86dd7),
                      Color(0xff3023ae),
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
                child: Center(
                  child: Text(
                    "F",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'Fruhauf\'s',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),

          /// aqui deveria ficar o responsive layout TODO
          if (!Responsivelayout.isSmallScren(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...navItem(),
                InkWell(
                  onTap: () => print('login'),
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xffc86dd7), Color(0xff3023ae)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xff6078ea).withOpacity(.3),
                            offset: Offset(0, 8),
                            blurRadius: 8),
                      ],
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: .5,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          else
            IconButton(
              icon: Icon(
                Icons.menu,
                size: 35,
                color: Colors.black,
              ),
            )
        ],
      ),
    );
  }
}
