import 'package:bca_mobile_redesign/common/bloc/cancel_bloc.dart';
import 'package:bca_mobile_redesign/common/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Consumer<CancelProvider>(builder: (context, myType, child) {

    return Scaffold(
      backgroundColor: blueOne,
      body: BlocBuilder<CancelBloc, bool>(
          bloc: BlocProvider.of<CancelBloc>(context),
          builder: (context, state) {
            return Center(
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
                          onChanged: (value) =>
                              // Provider.of<CancelProvider>(context, listen: false)
                              //     .trueState();
                              BlocProvider.of<CancelBloc>(context,
                                      listen: false)
                                  .toogleBtn(),
                          // context.read<CancelBloc>().toogleBtn();
                          keyboardType: TextInputType.number,
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
                        state
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 53,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(11),
                                          border: Border.all(
                                              color: white, width: 2),
                                          color: Colors.transparent),
                                      child: TextButton(
                                        onPressed: () =>
                                            // Provider.of<CancelProvider>(context,
                                            //         listen: false)
                                            //     .falseState();
                                            context
                                                .read<CancelBloc>()
                                                .toogleBtn(),
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
            );
          }),
    );
    // });
  }
}
