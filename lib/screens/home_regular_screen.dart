import 'package:demo_1_proyect/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeRegular extends StatelessWidget {
  const HomeRegular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle styleText = TextStyle(fontSize: 25, color: Colors.white);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [MyColors.greyLight, MyColors.greyDark],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                stops: const [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/img/imagen1.jpeg'),
                radius: 120,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Margaret',
                    style: styleText,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Qualley', style: styleText)
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'margaretqualley@gmail.com',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 70,
              ),
              MaterialButton(
                onPressed: () {},
                child: Container(
                    child: Center(
                        child: Text(
                      'Logout',
                      style: TextStyle(color: Color(0xFF909ba9), fontSize: 18),
                    )),
                    height: 50,
                    width: 160,
                    decoration: BoxDecoration(
                        color: MyColors.greybutton,
                        borderRadius: BorderRadius.circular(25))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
