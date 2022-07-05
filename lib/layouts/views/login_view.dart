import 'package:bca_mobile_redesign/common/custom_color.dart';
import 'package:bca_mobile_redesign/common/provider/cancel_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CancelProvider>(builder: (context, myType, child) {
      return Scaffold(
        backgroundColor: blueOne,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/bca_logo.png'),
              Column(
                children: const [
                  Text(
                    'Welcome!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Please enter your\naccess code',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        Provider.of<CancelProvider>(context, listen: false)
                            .trueState();
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: 'Enter Pin',
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide:
                                  const BorderSide(color: Colors.white))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    myType.cancelBtn == false
                        ? Container(
                            height: 53,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: blueTwo),
                            child: TextButton(
                              onPressed: () {},
                              child: const Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 53,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11),
                                      border: Border.all(color: blueTwo),
                                      color: Colors.transparent),
                                  child: TextButton(
                                    onPressed: () {
                                      Provider.of<CancelProvider>(context,
                                              listen: false)
                                          .falseState();
                                    },
                                    child: const Center(
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(color: white),
                                      ),
                                    ),
                                  )),
                              Container(
                                height: 53,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: blueTwo),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text(
                  'change password',
                  style: TextStyle(color: white),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
