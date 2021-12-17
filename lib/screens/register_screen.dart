import 'package:demo_1_proyect/theme/theme.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: 80,
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.of(context).popAndPushNamed('login');
          },
          child: Container(
            child: const Center(
                child: Text(
              'Sign In',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )),
            height: 45,
            width: 110,
            decoration: BoxDecoration(
                color: MyColors.greenbutton,
                borderRadius: BorderRadius.circular(25)),
          ),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.of(context).popAndPushNamed('register');
          },
          child: Container(
            child: const Center(
                child: Text(
              'Sign Up',
              style: TextStyle(color: Color(0xFF909ba9), fontSize: 18),
            )),
            height: 45,
            width: 110,
            decoration: BoxDecoration(
                color: MyColors.greybutton,
                borderRadius: BorderRadius.circular(25)),
          ),
        ),
      ],
    );

    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [MyColors.greyLight, MyColors.greyLight])),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: appBar,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 170,
                ),
                const TextRow(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      const Text('FULL NAME',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                      TextFormField(
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.text,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.3)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2.5)),
                            hintText: 'Enter your full name',
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text('E-MAIL',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                      TextFormField(
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.emailAddress,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.3)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2.5)),
                            hintText: 'You e-mail goes here',
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text('PASSWORD',
                          style: TextStyle(fontSize: 16, color: Colors.white)),
                      TextFormField(
                        obscureText: true,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.visiblePassword,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1.3)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2.5)),
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  )),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    child: const Center(
                        child: Text(
                      'Sign Up',
                      style: TextStyle(color: Color(0xFF909ba9), fontSize: 18),
                    )),
                    height: 55,
                    width: 250,
                    decoration: BoxDecoration(
                        color: MyColors.greybutton,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    child: const Center(
                        child: Text(
                      'Sign up with Gmail',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                    height: 55,
                    width: 250,
                    decoration: BoxDecoration(
                        color: MyColors.greenbutton,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextRow extends StatelessWidget {
  const TextRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 30,
        ),
        MaterialButton(
          onPressed: () {
            Navigator.of(context).popAndPushNamed('login');
          },
          child: Center(
            child: Container(
              height: 45,
              child: const Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ),
          ),
        ),
        const Text(
          'or',
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.of(context).popAndPushNamed('register');
          },
          child: Center(
            child: Container(
              height: 45,
              child: const Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
              decoration: BoxDecoration(
                  border: BorderDirectional(
                      bottom:
                          BorderSide(color: MyColors.greenbutton, width: 2))),
            ),
          ),
        ),
      ],
    );
  }
}
